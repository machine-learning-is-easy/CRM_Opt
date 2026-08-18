#include "resim/Config.h"

#include <algorithm>
#include <cerrno>
#include <charconv>
#include <cctype>
#include <cmath>
#include <cstdlib>
#include <fstream>
#include <limits>
#include <set>
#include <sstream>
#include <system_error>

namespace reservoir {
namespace {

std::string trim(const std::string &value) {
  std::size_t first = 0;
  while (first < value.size() && std::isspace(static_cast<unsigned char>(value[first]))) {
    ++first;
  }

  std::size_t last = value.size();
  while (last > first && std::isspace(static_cast<unsigned char>(value[last - 1]))) {
    --last;
  }

  return value.substr(first, last - first);
}

std::string stripComment(const std::string &line) {
  bool in_quote = false;
  char quote = '\0';
  for (std::size_t i = 0; i < line.size(); ++i) {
    const char c = line[i];
    if ((c == '\'' || c == '"') && (i == 0 || line[i - 1] != '\\')) {
      if (!in_quote) {
        in_quote = true;
        quote = c;
      } else if (quote == c) {
        in_quote = false;
      }
    }
    if (!in_quote && c == '#') {
      return line.substr(0, i);
    }
  }
  return line;
}

std::vector<std::string> splitTokens(const std::string &line) {
  std::vector<std::string> tokens;
  std::string token;
  bool in_quote = false;
  char quote = '\0';

  for (std::size_t i = 0; i < line.size(); ++i) {
    const char c = line[i];
    if ((c == '\'' || c == '"') && (i == 0 || line[i - 1] != '\\')) {
      if (!in_quote) {
        in_quote = true;
        quote = c;
        continue;
      }
      if (quote == c) {
        in_quote = false;
        continue;
      }
    }

    if (!in_quote && std::isspace(static_cast<unsigned char>(c))) {
      if (!token.empty()) {
        tokens.push_back(token);
        token.clear();
      }
      continue;
    }

    token.push_back(c);
  }

  if (in_quote) {
    tokens.push_back(token);
  } else if (!token.empty()) {
    tokens.push_back(token);
  }

  return tokens;
}

bool isIntegerKey(const std::string &key) {
  static const std::set<std::string> keys = {
      "nx", "ny", "nz", "steps", "nstep", "num_steps", "output_every", "vtk_every"};
  return keys.count(key) != 0;
}

bool isStringKey(const std::string &key) {
  static const std::set<std::string> keys = {
      "perm_file", "permeability_file", "poro_file", "porosity_file", "output_dir",
      "out_dir", "output_prefix", "prefix"};
  return keys.count(key) != 0;
}

std::string formatLocation(const std::filesystem::path &file, int line, int column) {
  std::ostringstream out;
  out << file.string();
  if (line > 0) {
    out << ':' << line;
    if (column > 0) {
      out << ':' << column;
    }
  }
  return out.str();
}

[[noreturn]] void failAt(const std::filesystem::path &file,
                        int line,
                        const std::string &message,
                        int column = 1) {
  throw ParseError(file, line, column, message);
}

std::string valuePart(const std::vector<std::string> &tokens,
                      const std::filesystem::path &file,
                      int line,
                      const std::string &key) {
  if (tokens.size() < 2) {
    failAt(file, line, "missing value for key '" + key + "'");
  }
  if (tokens.size() > 2) {
    failAt(file, line, "key '" + key + "' expects a single value; extra token '" + tokens[2] + "'");
  }
  return tokens[1];
}

double parseDouble(const std::string &token,
                   const std::filesystem::path &file,
                   int line,
                   const std::string &what) {
  const std::string value = trim(token);
  if (value.empty()) {
    failAt(file, line, "missing numeric value for " + what);
  }

  char *end = nullptr;
  errno = 0;
  const double result = std::strtod(value.c_str(), &end);
  if (end == value.c_str() || *end != '\0' || errno == ERANGE || !std::isfinite(result)) {
    failAt(file, line, "invalid numeric value for " + what + ": '" + token + "'");
  }
  return result;
}

int parseInt(const std::string &token,
             const std::filesystem::path &file,
             int line,
             const std::string &what) {
  const std::string value = trim(token);
  if (value.empty()) {
    failAt(file, line, "missing integer value for " + what);
  }

  long long parsed = 0;
  const auto *begin = value.data();
  const auto *end = value.data() + value.size();
  const auto result = std::from_chars(begin, end, parsed);
  if (result.ec != std::errc() || result.ptr != end ||
      parsed < std::numeric_limits<int>::min() || parsed > std::numeric_limits<int>::max()) {
    failAt(file, line, "invalid integer value for " + what + ": '" + token + "'");
  }
  return static_cast<int>(parsed);
}

bool isIntegerToken(const std::string &token) {
  const std::string value = trim(token);
  if (value.empty()) {
    return false;
  }
  long long parsed = 0;
  const auto *begin = value.data();
  const auto *end = value.data() + value.size();
  const auto result = std::from_chars(begin, end, parsed);
  return result.ec == std::errc() && result.ptr == end;
}

void requirePositive(double value, const std::string &name) {
  if (!(value > 0.0) || !std::isfinite(value)) {
    throw ConfigError("configuration key '" + name + "' must be positive");
  }
}

void requireNonNegative(double value, const std::string &name) {
  if (value < 0.0 || !std::isfinite(value)) {
    throw ConfigError("configuration key '" + name + "' must be non-negative");
  }
}

void setScalar(Config &config, const std::string &key, double value) {
  config.scalars[key] = value;

  if (key == "nx") config.nx = static_cast<int>(value);
  else if (key == "ny") config.ny = static_cast<int>(value);
  else if (key == "nz") config.nz = static_cast<int>(value);
  else if (key == "lx") config.lx = value;
  else if (key == "ly") config.ly = value;
  else if (key == "lz") config.lz = value;
  else if (key == "dx") config.dx = value;
  else if (key == "dy") config.dy = value;
  else if (key == "dz") config.dz = value;
  else if (key == "dt" || key == "timestep") config.dt = value;
  else if (key == "report_dt") config.output_interval = value;
  else if (key == "total_time" || key == "time" || key == "end_time") config.total_time = value;
  else if (key == "steps" || key == "nstep" || key == "num_steps") config.steps = static_cast<int>(value);
  else if (key == "cfl") config.cfl = value;
  else if (key == "output_every" || key == "vtk_every") config.output_every = static_cast<int>(value);
  else if (key == "output_interval") config.output_interval = value;
}

void setString(Config &config, const std::string &key, const std::string &value) {
  config.strings[key] = value;

  if (key == "perm_file" || key == "permeability_file") config.perm_file = value;
  else if (key == "poro_file" || key == "porosity_file") config.poro_file = value;
  else if (key == "output_dir" || key == "out_dir") config.output_dir = value;
  else if (key == "output_prefix" || key == "prefix") config.output_prefix = value;
}

void applyWellOption(WellConfig &well,
                     const std::string &option,
                     double numeric) {
  if (option == "rate" || option == "water_rate") well.rate = numeric;
  else if (option == "oil_rate") {
    throw ConfigError("oil_rate control is not supported; use total rate or bhp");
  }
  else if (option == "bhp" || option == "pressure") well.bhp = numeric;
  else if (option == "radius" || option == "well_radius") well.radius = numeric;
  else if (option == "skin") well.skin = numeric;
  else well.extra_scalars[option] = numeric;
}

void parseWell(Config &config,
               const std::vector<std::string> &tokens,
               const std::filesystem::path &file,
               int line) {
  if (tokens.size() < 5) {
    failAt(file, line,
           "well expects either: well <name> <injector|producer> <i> <j> [k] key=value ... or well <inject|produce> <i> <j> <k> <water_rate|bhp> <value>");
  }

  WellConfig well;
  std::size_t next = 0;
  const std::string second = normalizeKey(tokens[1]);
  if ((second == "inject" || second == "injector" || second == "inj" ||
       second == "produce" || second == "producer" || second == "prod") &&
      tokens.size() > 2 && isIntegerToken(tokens[2])) {
    if (tokens.size() < 7) {
      failAt(file, line,
             "shorthand well expects: well <inject|produce> <i> <j> <k> <water_rate|bhp> <value>");
    }
    well.type = wellTypeFromString(tokens[1]);
    well.name = (well.type == WellConfig::Type::Injector ? "injector" : "producer") +
        std::to_string(config.wells.size() + 1);
    well.i = parseInt(tokens[2], file, line, "well '" + well.name + "' i index");
    well.j = parseInt(tokens[3], file, line, "well '" + well.name + "' j index");
    well.k = parseInt(tokens[4], file, line, "well '" + well.name + "' k index");
    applyWellOption(well,
                    normalizeKey(tokens[5]),
                    parseDouble(tokens[6], file, line, "well '" + well.name + "' control value"));
    next = 7;
  } else {
    well.name = tokens[1];
    well.type = wellTypeFromString(tokens[2]);
    well.i = parseInt(tokens[3], file, line, "well '" + well.name + "' i index");
    well.j = parseInt(tokens[4], file, line, "well '" + well.name + "' j index");
    next = 5;
    if (tokens.size() > next && tokens[next].find('=') == std::string::npos) {
      well.k = parseInt(tokens[next], file, line, "well '" + well.name + "' k index");
      ++next;
    }
  }

  for (std::size_t idx = next; idx < tokens.size(); ++idx) {
    const std::string &token = tokens[idx];
    const std::size_t eq = token.find('=');
    if (eq == std::string::npos || eq == 0 || eq + 1 >= token.size()) {
      failAt(file, line,
             "well option must be key=value for well '" + well.name + "'; got '" + token + "'");
    }

    const std::string option = normalizeKey(token.substr(0, eq));
    const std::string raw_value = token.substr(eq + 1);
    applyWellOption(well,
                    option,
                    parseDouble(raw_value, file, line,
                                "well '" + well.name + "' option '" + option + "'"));
  }

  if (!well.rate && !well.bhp) {
    failAt(file, line, "well '" + well.name + "' must define at least one of rate=, water_rate=, oil_rate=, or bhp=");
  }

  config.wells.push_back(well);
}

} // namespace

ConfigError::ConfigError(const std::string &message) : std::runtime_error(message) {}

ParseError::ParseError(const std::filesystem::path &file,
                       int line,
                       int column,
                       const std::string &message)
    : ConfigError(formatLocation(file, line, column) + ": " + message),
      file_(file),
      line_(line),
      column_(column) {}

std::string normalizeKey(const std::string &key) {
  std::string normalized;
  normalized.reserve(key.size());
  for (char c : trim(key)) {
    if (c == '-') {
      normalized.push_back('_');
    } else {
      normalized.push_back(static_cast<char>(std::tolower(static_cast<unsigned char>(c))));
    }
  }
  return normalized;
}

std::string toString(WellConfig::Type type) {
  switch (type) {
  case WellConfig::Type::Injector:
    return "injector";
  case WellConfig::Type::Producer:
    return "producer";
  }
  return "unknown";
}

WellConfig::Type wellTypeFromString(const std::string &value) {
  const std::string normalized = normalizeKey(value);
  if (normalized == "injector" || normalized == "inject" || normalized == "inj") {
    return WellConfig::Type::Injector;
  }
  if (normalized == "producer" || normalized == "produce" || normalized == "prod") {
    return WellConfig::Type::Producer;
  }
  throw ConfigError("invalid well type '" + value + "'; expected injector or producer");
}

Config Config::fromFile(const std::filesystem::path &path) {
  Config config;
  config.deck_path = std::filesystem::absolute(path);
  config.deck_directory = config.deck_path.parent_path();

  std::ifstream input(config.deck_path);
  if (!input) {
    throw ConfigError("unable to open deck '" + config.deck_path.string() + "'");
  }

  std::string line;
  int line_number = 0;
  while (std::getline(input, line)) {
    ++line_number;
    line = trim(stripComment(line));
    if (line.empty()) {
      continue;
    }

    std::replace(line.begin(), line.end(), ',', ' ');
    const std::vector<std::string> tokens = splitTokens(line);
    if (tokens.empty()) {
      continue;
    }

    std::string key = normalizeKey(tokens[0]);
    if (!key.empty() && key.back() == ':') {
      key.pop_back();
    }
    if (!key.empty() && key.front() == '[' && key.back() == ']') {
      key = normalizeKey(key.substr(1, key.size() - 2));
    }

    if (key == "grid") {
      if (tokens.size() != 4) {
        failAt(config.deck_path, line_number, "grid expects exactly three values: grid <nx> <ny> <nz>");
      }
      setScalar(config, "nx", parseInt(tokens[1], config.deck_path, line_number, "grid nx"));
      setScalar(config, "ny", parseInt(tokens[2], config.deck_path, line_number, "grid ny"));
      setScalar(config, "nz", parseInt(tokens[3], config.deck_path, line_number, "grid nz"));
      continue;
    }

    if (key == "spacing") {
      if (tokens.size() != 4) {
        failAt(config.deck_path, line_number, "spacing expects exactly three values: spacing <dx> <dy> <dz>");
      }
      setScalar(config, "dx", parseDouble(tokens[1], config.deck_path, line_number, "spacing dx"));
      setScalar(config, "dy", parseDouble(tokens[2], config.deck_path, line_number, "spacing dy"));
      setScalar(config, "dz", parseDouble(tokens[3], config.deck_path, line_number, "spacing dz"));
      continue;
    }

    if (key == "well" || key == "wells") {
      parseWell(config, tokens, config.deck_path, line_number);
      continue;
    }

    if (tokens.size() >= 3 && tokens[1] == "=") {
      std::vector<std::string> compacted;
      compacted.push_back(tokens[0]);
      compacted.push_back(tokens[2]);
      for (std::size_t i = 3; i < tokens.size(); ++i) {
        compacted.push_back(tokens[i]);
      }
      if (compacted.size() > 2) {
        failAt(config.deck_path, line_number,
               "key '" + key + "' expects a single value; extra token '" + compacted[2] + "'");
      }
      const std::string raw_value = compacted[1];
      if (isStringKey(key)) {
        setString(config, key, raw_value);
      } else {
        const double value = isIntegerKey(key)
            ? static_cast<double>(parseInt(raw_value, config.deck_path, line_number, key))
            : parseDouble(raw_value, config.deck_path, line_number, key);
        setScalar(config, key, value);
      }
      continue;
    }

    const std::string raw_value = valuePart(tokens, config.deck_path, line_number, key);
    if (isStringKey(key)) {
      setString(config, key, raw_value);
      continue;
    }

    const double value = isIntegerKey(key)
        ? static_cast<double>(parseInt(raw_value, config.deck_path, line_number, key))
        : parseDouble(raw_value, config.deck_path, line_number, key);
    setScalar(config, key, value);
  }

  config.validate();
  return config;
}

void Config::validate() const {
  if (nx <= 0 || ny <= 0 || nz <= 0) {
    throw ConfigError("grid dimensions nx, ny, and nz must be positive integers");
  }

  const auto check_optional_positive = [](const std::optional<double> &value,
                                          const std::string &name) {
    if (value) requirePositive(*value, name);
  };

  check_optional_positive(lx, "lx");
  check_optional_positive(ly, "ly");
  check_optional_positive(lz, "lz");
  check_optional_positive(dx, "dx");
  check_optional_positive(dy, "dy");
  check_optional_positive(dz, "dz");
  check_optional_positive(dt, "dt");
  check_optional_positive(total_time, "total_time");
  check_optional_positive(cfl, "cfl");
  check_optional_positive(output_interval, "output_interval");

  if (steps && *steps <= 0) {
    throw ConfigError("configuration key 'steps' must be a positive integer");
  }
  if (output_every && *output_every <= 0) {
    throw ConfigError("configuration key 'output_every' must be a positive integer");
  }
  if (!dt && !steps && !total_time) {
    throw ConfigError("deck must provide at least one time-control key: dt, steps, or total_time");
  }
  if (!perm_file.empty() && !std::filesystem::exists(permFilePath())) {
    throw ConfigError("perm_file does not exist: '" + permFilePath().string() + "'");
  }
  if (!poro_file.empty() && !std::filesystem::exists(poroFilePath())) {
    throw ConfigError("poro_file does not exist: '" + poroFilePath().string() + "'");
  }
  if (output_prefix.empty()) {
    throw ConfigError("output_prefix must not be empty");
  }

  for (const WellConfig &well : wells) {
    if (well.name.empty()) {
      throw ConfigError("well name must not be empty");
    }
    if (well.i < 0 || well.i >= nx || well.j < 0 || well.j >= ny || well.k < 0 || well.k >= nz) {
      std::ostringstream out;
      out << "well '" << well.name << "' index (" << well.i << ',' << well.j << ',' << well.k
          << ") is outside grid dimensions " << nx << 'x' << ny << 'x' << nz;
      throw ConfigError(out.str());
    }
    if (well.rate) requireNonNegative(std::abs(*well.rate), "well " + well.name + " rate");
    if (well.bhp) requirePositive(*well.bhp, "well " + well.name + " bhp");
    requirePositive(well.radius, "well " + well.name + " radius");
    if (!std::isfinite(well.skin)) {
      throw ConfigError("well '" + well.name + "' skin must be finite");
    }
  }
}

std::size_t Config::cellCount() const {
  return static_cast<std::size_t>(nx) * static_cast<std::size_t>(ny) * static_cast<std::size_t>(nz);
}

bool Config::hasScalar(const std::string &key) const {
  return scalars.find(normalizeKey(key)) != scalars.end();
}

double Config::scalar(const std::string &key) const {
  const std::string normalized = normalizeKey(key);
  const auto iter = scalars.find(normalized);
  if (iter == scalars.end()) {
    throw ConfigError("missing scalar key '" + normalized + "'");
  }
  return iter->second;
}

double Config::scalarOr(const std::string &key, double fallback) const {
  const std::string normalized = normalizeKey(key);
  const auto iter = scalars.find(normalized);
  return iter == scalars.end() ? fallback : iter->second;
}

std::filesystem::path Config::resolvePath(const std::string &path_value) const {
  if (path_value.empty()) {
    return {};
  }
  const std::filesystem::path candidate(path_value);
  if (candidate.is_absolute()) {
    return candidate;
  }
  return deck_directory / candidate;
}

std::filesystem::path Config::permFilePath() const {
  return resolvePath(perm_file);
}

std::filesystem::path Config::poroFilePath() const {
  return resolvePath(poro_file);
}

std::filesystem::path Config::outputDirectoryPath() const {
  return resolvePath(output_dir);
}

} // namespace reservoir

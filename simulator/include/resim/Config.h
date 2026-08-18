#pragma once

#include <cstddef>
#include <filesystem>
#include <map>
#include <optional>
#include <stdexcept>
#include <string>
#include <vector>

namespace reservoir {

class ConfigError : public std::runtime_error {
public:
  explicit ConfigError(const std::string &message);
};

class ParseError : public ConfigError {
public:
  ParseError(const std::filesystem::path &file,
             int line,
             int column,
             const std::string &message);

  const std::filesystem::path &file() const noexcept { return file_; }
  int line() const noexcept { return line_; }
  int column() const noexcept { return column_; }

private:
  std::filesystem::path file_;
  int line_ = 0;
  int column_ = 0;
};

struct WellConfig {
  enum class Type { Injector, Producer };

  std::string name;
  Type type = Type::Producer;
  int i = 0;
  int j = 0;
  int k = 0;
  std::optional<double> rate;
  std::optional<double> bhp;
  double radius = 0.1;
  double skin = 0.0;
  std::map<std::string, double> extra_scalars;
};

struct Config {
  std::filesystem::path deck_path;
  std::filesystem::path deck_directory;

  int nx = 0;
  int ny = 0;
  int nz = 1;

  std::optional<double> lx;
  std::optional<double> ly;
  std::optional<double> lz;
  std::optional<double> dx;
  std::optional<double> dy;
  std::optional<double> dz;

  std::optional<double> dt;
  std::optional<double> total_time;
  std::optional<int> steps;
  std::optional<double> cfl;
  std::optional<int> output_every;
  std::optional<double> output_interval;

  std::string perm_file;
  std::string poro_file;
  std::string output_dir = "output";
  std::string output_prefix = "reservoir";

  std::map<std::string, double> scalars;
  std::map<std::string, std::string> strings;
  std::vector<WellConfig> wells;

  static Config fromFile(const std::filesystem::path &path);

  void validate() const;
  std::size_t cellCount() const;

  bool hasScalar(const std::string &key) const;
  double scalar(const std::string &key) const;
  double scalarOr(const std::string &key, double fallback) const;

  std::filesystem::path resolvePath(const std::string &path_value) const;
  std::filesystem::path permFilePath() const;
  std::filesystem::path poroFilePath() const;
  std::filesystem::path outputDirectoryPath() const;
};

std::string toString(WellConfig::Type type);
WellConfig::Type wellTypeFromString(const std::string &value);
std::string normalizeKey(const std::string &key);

} // namespace reservoir

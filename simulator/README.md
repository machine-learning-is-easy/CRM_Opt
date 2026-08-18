# Standalone Oil-Water Reservoir Simulator

This directory provides a dependency-free C++17 two-phase, immiscible, incompressible reservoir simulator. It uses TPFA finite volumes, an implicit pressure solve, explicit upwind saturation transport, Corey relative permeability, Peaceman wells, CFL substepping, and a Jacobi-preconditioned conjugate-gradient solver.

The `simulate` executable writes cell-centered VTK ImageData time series that ParaView can open directly. RVA remains unchanged and consumes the resulting datasets through ParaView's native VTK readers.

## Build and Test

```sh
cmake -S /Users/zhiyongjin/repo/CRM_Opt/simulator -B /Users/zhiyongjin/repo/CRM_Opt/simulator/build
cmake --build /Users/zhiyongjin/repo/CRM_Opt/simulator/build
ctest --test-dir /Users/zhiyongjin/repo/CRM_Opt/simulator/build --output-on-failure
```

This creates the reusable `reservoir_simulator` library and the `simulate` executable without requiring ParaView, VTK, or external linear-algebra libraries.

## Run

```sh
/Users/zhiyongjin/repo/CRM_Opt/simulator/build/simulate \
  /Users/zhiyongjin/repo/CRM_Opt/simulator/examples/quarter_five_spot.deck
```

Use `--validate-only` to parse the deck and validate grid, rock, fluid, and well inputs without running the simulation.

## Deck Format

Decks are line-oriented text files. Blank lines and `#` comments are ignored. Scalar entries accept `key value` or `key = value`. Relative `perm_file`, `poro_file`, and `output_dir` paths are resolved relative to the deck.

```text
grid        50 50 1
spacing     10 10 2
porosity    0.2
perm        200
mu_water    1.0
mu_oil      5.0
swc         0.2
sor         0.2
corey_nw    2
corey_no    2
init_sw     0.2
well        inject  0  0  0   water_rate  100
well        produce 49 49 0   bhp         200
time        1000
report_dt   50
output_dir  ./output
output_prefix out
```

Named wells are also supported:

```text
well INJ injector 0 0 0 rate=100 radius=0.1
well PROD producer 49 49 0 bhp=200 radius=0.1 skin=0
```

Rate values are total reservoir-volume rates; injectors inject water. `oil_rate` control is intentionally rejected because phase-rate conversion is not implemented. An incompressible case containing only rate-controlled wells must have zero net reservoir rate. `output_every`/`vtk_every` is rejected; use `report_dt` or `output_interval`.

Set `perm_file` or `poro_file` to load one whitespace-delimited value per cell in x-fastest order. Each file must contain exactly `nx * ny * nz` values.

## Output and RVA

For each report time, `simulate` writes `<prefix>_<step>.vti` with these single-component cell arrays:

- `Pressure`
- `Sw`
- `So`
- `Permeability`
- `Porosity`

It also writes `<prefix>.pvd` for animation and a stable `wells.vtp` containing named well points, rates, and `WellType` (`1` injector, `-1` producer).

Open `<prefix>.pvd` in ParaView, then load `wells.vtp` when well geometry is needed. With RVA plugins loaded, useful workflows include Global Z-Scale, ConnectedThreshold on `Sw`, RVAVolumetrics using `Porosity` and `Sw`, and CutBetweenWells using the well points.

The VTK grid has point extents `0..nx`, `0..ny`, `0..nz` and exactly `nx * ny * nz` x-fastest cell tuples, matching RVA's reservoir reader conventions.

## Verification Cases

- `/Users/zhiyongjin/repo/CRM_Opt/simulator/tests/test_linear_solver.cpp` checks PCG against a known SPD solution.
- `/Users/zhiyongjin/repo/CRM_Opt/simulator/tests/test_mass_balance.cpp` checks phase conservation and rejects unbalanced all-rate controls.
- `/Users/zhiyongjin/repo/CRM_Opt/simulator/tests/test_buckley_leverett.cpp` checks monotonicity, bounds, and analytical shock-front position.
- `/Users/zhiyongjin/repo/CRM_Opt/simulator/tests/check_demo_output.cmake` runs the quarter five-spot and verifies multiple report files, required arrays, the PVD collection, and tagged well geometry.

## Limitations

IMPES saturation transport is explicit and may require small substeps. The simulator limits the step using the fractional-flow derivative and fails rather than silently clipping a materially nonphysical update. Gravity, capillary pressure coupling, compressibility, gas, anisotropic deck inputs, and well schedules that change controls over time are not included in this first version.

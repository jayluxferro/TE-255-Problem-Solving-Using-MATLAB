# Coding-assignment reference solutions

One folder per assignment. These are instructor reference solutions for the
TE 255 coding assignments; they were run / lint-checked on MATLAB R2023b.

| # | Folder | Files | Task |
|---|--------|-------|------|
| I | `assignment01/` | `weighted_average_solution.m` | credit-weighted semester average (interactive: prompts for marks) |
| II | `assignment02/` | `ataa_gob3_sales.m` | weekly food-joint sales with a 5.5% discount |
| III | `assignment03/` | `twoLinePlot.m` | sine + cosine on one set of axes, labelled |
| IV | `assignment04/` | `mr_hanson_payroll.m`, `calculatePayableDailySales.m` | driver payroll; function + global rate |
| V | `assignment05/` | `ataa_gob3_v2.m`, `calculateFoodPrice.m` | Ataa Gob3 with global constants, a price function, and a bar chart |
| VI | `assignment06/` | `taxdata_analysis.m` | taxdata: min/avg/max labor tax + polynomial fit of payments → labor tax |
| VII | `assignment07/` | `assignment07_noise.slx`, `build_assignment07.m` | Simulink: signal + noise (two Sine Wave sources) summed into a Scope |
| VIII | `assignment08/` | `assignment08_chop.slx`, `build_assignment08.m` | Simulink: a pulse multiplied by a step u(t−5) to chop off t < 5 s |

Notes:
- Assignment I is interactive (`input`); run it from MATLAB and type the marks.
- Assignments IV and V use `global` constants because the briefs ask for it
  (the rate / egg price / discount are not passed to the subroutines). In
  general, prefer passing values as arguments.
- Assignment VI's brief mentions `xlsread` (legacy); the solution uses the
  modern `readtable`.
- The Simulink assignments (VII, VIII) ship as `.slx` models, each with a
  `build_*.m` script that regenerates it. Both were built and simulated on
  MATLAB R2023b (VIII correctly zeros the pulse before t = 5 s and passes it
  after).

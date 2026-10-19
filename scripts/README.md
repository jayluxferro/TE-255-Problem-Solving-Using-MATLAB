# Lecture example scripts

Every `_demo.m` runs top to bottom and prints its results; the plain function
files are called by those demos. All were executed and `checkcode`-clean on
MATLAB R2023b.

| Lecture | Script | Shows |
|---|---|---|
| 1 | `variables_types_demo.m` | assignment, `class`, constants, floating-point `==` trap |
| 1 | `arrays_indexing_demo.m` | vectors, 1-based indexing, logical masks, `.*` vs `*` |
| 1 | `weighted_average.m` | credit-weighted mean (Coding Assignment I idea) |
| 2 | `plotting_basics_demo.m` | labelled 2-series plot, `exportgraphics` |
| 2 | `control_flow_demo.m` | `if` / `switch` / `for` / `while`, `break`/`continue` |
| 2 | `grade_of.m` + `classify_class_demo.m` | a function plus a loop over data |
| 2 | `is_prime.m` + `primes_demo.m` | trial division; cross-check vs `primes` |
| 3 | `linear_system_demo.m` | solve `A\b`, residual check |
| 3 | `roots_fzero_demo.m` | `polyval`, `roots`, `fzero` |
| 3 | `curve_fitting_demo.m` | `polyfit` + R² |
| 3 | `tax_fit_demo.m` | real dataset: effective vs statutory tax rate |
| 3 | `ode_cooling_demo.m` | `ode45`, Newton cooling |
| 4 | `containers_demo.m` | cell / struct / struct array / table |
| 4 | `text_processing_demo.m` | `split`/`join`/`contains`, parsing |
| 4 | `file_io_demo.m` | `writetable`/`readtable`, `save`/`load`, `fopen`/`fclose` |
| 4 | `robust_fast_demo.m` | `try`/`catch`, preallocation vs growth, `tic`/`toc` |
| 5 | `function_handles_demo.m` | handles, `arrayfun`/`cellfun`, `integral` |
| 5 | `stats.m` + `stats_demo.m` | `arguments`-validated function, multiple outputs |
| 5 | `factorial_r.m` + `recursion_demo.m` | recursion with a base case |
| 5 | `analyse_signal.m` + `signal_analysis_demo.m` | end-to-end: represent → process → analyse → report |

Lecture 6 (Agentic MATLAB) is about driving MATLAB with an AI assistant, so it
has no standalone scripts of its own.

# TE 255 — Problem Solving Using MATLAB

MATLAB source code for the course (KNUST). Runnable example scripts for each
lecture, reference solutions for the coding assignments, and the small datasets
the scripts use. Lecture slides and other materials are distributed separately
and are intentionally not kept here.

Every script in `scripts/` has been run and lint-checked on **MATLAB R2023b**.

## Layout

```
scripts/
  lec01/   MATLAB basics        - variables, types, arrays, indexing, weighted average
  lec02/   visualization & prog - plotting, if/switch/for/while, functions (grade_of, is_prime)
  lec03/   equations & numerics - A\b, roots/fzero, polyfit, tax fit, ode45
  lec04/   advanced methods     - cell/struct/table, text, file I/O, try/catch, timing
  lec05/   functions/toolboxes  - handles, arguments-validated functions, recursion, a signal app
solutions/  reference solutions for the coding assignments   (in progress)
data/       small datasets used by the scripts (taxdata.xlsx)
```

Files ending `_demo.m` are runnable top to bottom. Other `.m` files are
functions (e.g. `grade_of.m`, `stats.m`) that the demos call.

## Running

Open MATLAB, then either run a single demo:

```matlab
cd scripts/lec03
roots_fzero_demo
```

or put the whole tree on the path and run from anywhere:

```matlab
addpath(genpath('scripts'));
signal_analysis_demo
```

## Requirements

Base MATLAB R2019b or newer (for the `arguments` validation block and modern
`string` handling). No additional toolboxes are required.

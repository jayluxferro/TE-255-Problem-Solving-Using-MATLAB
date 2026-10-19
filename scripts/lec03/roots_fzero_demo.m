%% roots_fzero_demo.m
% TE 255 - Lecture 3: polynomial roots and solving f(x)=0.

%% Polynomial as a coefficient vector (highest power first)
p = [2 0 -3 1];           % 2x^3 - 3x + 1
fprintf('p(2) = %g\n', polyval(p, 2));
fprintf('roots of p:\n'); disp(roots(p));

%% Any function: fzero needs a handle and a guess (or a bracket)
f = @(x) cos(x) - x;      % solve cos(x) = x
r = fzero(f, 0.5);
fprintf('cos(x)=x  ->  x = %.6f  (check: cos(x)-x = %.2e)\n', r, f(r));

g = @(x) x.^3 - 2*x - 5;  % classic test equation
r2 = fzero(g, 2);
fprintf('x^3-2x-5=0  ->  x = %.6f\n', r2);

%% variables_types_demo.m
% TE 255 - Lecture 1: variables, assignment, and types.
% Run top to bottom; each block prints what it produces.

%% Assignment: "=" means assign (not "equals")
radius = 5;
area   = pi * radius^2;
name   = "Ama";               % a string (double quotes)
fprintf('radius = %g, area = %.2f, name = %s\n', radius, area, name);

%% Types: MATLAB infers them; ask with class()
fprintf('class(3.84) = %s\n', class(3.84));    % double
fprintf('class("hi") = %s\n', class("hi"));    % string
fprintf("class('A')  = %s\n", class('A'));     % char
fprintf('class(5>2)  = %s\n', class(5 > 2));   % logical

%% Handy built-in constants
fprintf('pi = %.5f, eps = %.3e\n', pi, eps);
fprintf('1/0 = %g, 0/0 = %g\n', 1/0, 0/0);     % Inf, NaN

%% Floating point: never test reals with ==
x = 0.1 + 0.2;
fprintf('0.1+0.2 == 0.3 ?  %d\n', x == 0.3);          % 0 (false!)
fprintf('abs(x-0.3) < 1e-9 ?  %d\n', abs(x-0.3) < 1e-9); % 1 (use a tolerance)

%% function_handles_demo.m
% TE 255 - Lecture 5: function handles and applying functions over data.

f = @sin;                      % handle to a built-in
g = @(x) x.^2 + 1;             % anonymous function
fprintf('f(pi/2) = %g, g(3) = %g\n', f(pi/2), g(3));

%% A cell of handles
h = {@sin, @cos, @tan};
fprintf('h{2}(0) = cos(0) = %g\n', h{2}(0));

%% Map a function over each element
v = [1 4 9 16];
disp(arrayfun(@sqrt, v));                    % 1 2 3 4

names = {"ama","kofi","esi"};
up = cellfun(@upper, names, 'UniformOutput', false);
disp(up);

%% Pass a handle to another function (numerical integration)
area = integral(@(x) exp(-x.^2), 0, Inf);
fprintf('integral of exp(-x^2) on [0,Inf) = %.4f (sqrt(pi)/2 = %.4f)\n', ...
        area, sqrt(pi)/2);

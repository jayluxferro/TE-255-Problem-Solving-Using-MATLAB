%% linear_system_demo.m
% TE 255 - Lecture 3: solve A*x = b with the backslash operator.
%
%   2x +  y -  z =  8
%  -3x - y + 2z = -11
%  -2x + y + 2z = -3

A = [ 2  1 -1;
     -3 -1  2;
     -2  1  2];
b = [8; -11; -3];

x = A \ b;                 % solve (stable + fast; prefer over inv(A)*b)

fprintf('solution x = [%g; %g; %g]\n', x(1), x(2), x(3));
fprintf('det(A) = %g, rank(A) = %d\n', det(A), rank(A));
fprintf('residual norm ||A*x - b|| = %.3e\n', norm(A*x - b));

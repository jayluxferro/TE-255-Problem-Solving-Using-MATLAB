%% arrays_indexing_demo.m
% TE 255 - Lecture 1: vectors, matrices, indexing, element-wise maths.

%% Building vectors
r = [1 2 3 4 5];        % row vector
c = [1; 2; 3];          % column vector
a = 0:2:10;             % 0 2 4 6 8 10 (start:step:stop)
b = linspace(0, 1, 5);  % 5 evenly spaced points
disp(r); disp(c.'); disp(a); disp(b);

%% Indexing starts at 1 (not 0!)
v = [10 20 30 40 50];
fprintf('v(1)=%d  v(3)=%d  v(end)=%d\n', v(1), v(3), v(end));
disp(v(2:4));           % 20 30 40

%% Matrices use (row, col)
A = [1 2 3; 4 5 6];
fprintf('A(2,3) = %d\n', A(2,3));
disp(A(1,:));           % whole first row
disp(A(:,2).');         % whole second column (shown as a row)

%% Logical indexing: select by condition
scores = [45 72 88 31 90 67];
passed = scores(scores >= 50);
fprintf('passed: '); disp(passed);
fprintf('how many >= 50: %d\n', sum(scores >= 50));

%% Element-wise (dot) vs matrix operations
x = [1 2 3];  y = [4 5 6];
disp(x .* y);           % 4 10 18 (element-wise)
disp(x .^ 2);           % 1 4 9
M = [1 2; 3 4];
disp(M * M);            % matrix product
disp(M.');              % transpose

%% Summary functions
d = [4 8 15 16 23 42];
fprintf('numel=%d sum=%d mean=%.1f max=%d\n', numel(d), sum(d), mean(d), max(d));

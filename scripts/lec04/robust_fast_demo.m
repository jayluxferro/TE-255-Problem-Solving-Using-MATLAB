%% robust_fast_demo.m
% TE 255 - Lecture 4: error handling, preallocation, and timing.

%% try / catch: handle failure gracefully
try
    T = readtable('definitely_missing_file.csv');
catch ME
    fprintf('Handled error: %s\n', ME.message);
    T = table();                 % sensible fallback
end
fprintf('T has %d rows after fallback\n', height(T));

%% Preallocate + vectorise vs grow-in-loop
N = 2e5;

tic
yGrow = [];
for i = 1:N
    yGrow(end+1) = i^2; %#ok<SAGROW>   % slow: array regrows each step
end
tGrow = toc;

tic
yPre = zeros(1, N);               % preallocate
for i = 1:N
    yPre(i) = i^2;
end
tPre = toc;

tic
yVec = (1:N).^2;                  % vectorised: fastest + clearest
tVec = toc;

fprintf('grow-in-loop : %.4f s\n', tGrow);
fprintf('preallocated : %.4f s\n', tPre);
fprintf('vectorised   : %.4f s\n', tVec);
fprintf('all three agree: %d\n', isequal(yGrow, yPre, yVec));

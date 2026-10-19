%% recursion_demo.m
% TE 255 - Lecture 5: use factorial_r (same folder) and check it.

for n = 0:6
    fprintf('%d! = %d\n', n, factorial_r(n));
end

% Cross-check against the built-in factorial:
ok = arrayfun(@(k) factorial_r(k) == factorial(k), 0:10);
fprintf('matches built-in factorial for 0..10: %d\n', all(ok));

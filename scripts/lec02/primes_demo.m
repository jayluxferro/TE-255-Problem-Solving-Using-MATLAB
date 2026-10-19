%% primes_demo.m
% TE 255 - Lecture 2: use is_prime (same folder) to list primes below 50.

p = [];
for n = 2:49
    if is_prime(n)
        p(end+1) = n; %#ok<SAGROW>
    end
end
fprintf('Primes below 50:\n');
disp(p);

% A one-line, vectorised cross-check using the built-in:
fprintf('Built-in primes(49): matches = %d\n', isequal(p, primes(49)));

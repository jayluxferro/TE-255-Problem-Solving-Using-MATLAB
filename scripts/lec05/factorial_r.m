function y = factorial_r(n)
%FACTORIAL_R  n! computed by recursion (with a base case).
    if n <= 1
        y = 1;                 % base case stops the recursion
    else
        y = n * factorial_r(n - 1);
    end
end

function tf = is_prime(n)
%IS_PRIME  True if the positive integer n is prime.
%   tf = IS_PRIME(n) returns a logical. Trial division up to sqrt(n).
    if n < 2 || n ~= floor(n)
        tf = false;
        return
    end
    tf = true;
    for d = 2:floor(sqrt(n))
        if mod(n, d) == 0
            tf = false;
            return
        end
    end
end

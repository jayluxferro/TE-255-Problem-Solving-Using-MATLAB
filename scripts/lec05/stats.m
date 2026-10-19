function [mn, mx, rng, av] = stats(v)
%STATS  Summary statistics of a numeric vector.
%   [mn, mx, rng, av] = STATS(v) returns the min, max, range and mean.
%   The arguments block validates the input before the body runs.
    arguments
        v (1,:) double {mustBeNonempty}
    end
    mn  = min(v);
    mx  = max(v);
    rng = mx - mn;
    av  = mean(v);
end

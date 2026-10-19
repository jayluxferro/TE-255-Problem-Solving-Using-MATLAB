%% stats_demo.m
% TE 255 - Lecture 5: call stats (same folder) and show multiple outputs.

v = [4 9 2 7 5];
[mn, mx, rng, av] = stats(v);
fprintf('min=%g max=%g range=%g mean=%.2f\n', mn, mx, rng, av);

% You may request only the first few outputs:
m = stats(v);
fprintf('just the min = %g\n', m);

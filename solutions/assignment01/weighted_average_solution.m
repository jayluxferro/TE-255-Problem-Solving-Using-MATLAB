%% Coding Assignment I - semester weighted average (reference solution)
% The user enters each course mark; the program prints the credit-weighted
% average. This script is interactive (uses input), so run it from MATLAB.

courses = ["Environmental Studies", "Engineering Technology", "Algebra", ...
           "Basic Mechanics", "Applied Electricity", "Technical Drawing", ...
           "Communication Skills I"];
credits = [2 2 4 3 3 2 2];

marks = zeros(1, numel(courses));
for i = 1:numel(courses)
    marks(i) = input(sprintf('Enter mark for %s (%d credits): ', ...
                             courses(i), credits(i)));
end

weighted = sum(credits .* marks) / sum(credits);

fprintf('\nTotal credit hours : %d\n', sum(credits));
fprintf('Weighted average   : %.2f\n', weighted);

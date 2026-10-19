%% weighted_average.m
% TE 255 - Lecture 1 worked example (mirrors Coding Assignment I).
% Semester average where courses carry different credit hours, so each mark
% is weighted by its credits. The whole algorithm is one vectorised line.

credits = [2 2 4 3 3 2 2];            % credit hours per course
marks   = [78 65 70 88 59 91 73];     % marks out of 100

weighted = sum(credits .* marks) / sum(credits);   % <-- the idea

fprintf('Total credit hours : %d\n', sum(credits));
fprintf('Weighted average   : %.2f\n', weighted);

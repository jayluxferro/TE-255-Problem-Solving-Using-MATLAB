%% classify_class_demo.m
% TE 255 - Lecture 2: a small function (grade_of) plus a loop over data.
% grade_of.m lives in this same folder, so it is on the path when you run this.

marks = [78 65 70 88 59 91 73];
for i = 1:numel(marks)
    fprintf('Student %d: %3d -> %s\n', i, marks(i), grade_of(marks(i)));
end

%% containers_demo.m
% TE 255 - Lecture 4: cell arrays, structs, struct arrays, and tables.

%% Cell array: {} holds anything, of any size
C = {"Ama", 42, [1 2 3]};
fprintf('C{1} = %s, C{2} = %d\n', C{1}, C{2});   % {} = contents

%% Struct: named fields describing one thing
s.name  = "Ama Mensah";
s.index = 181211;
s.marks = [78 65 70 88];
s.mean  = mean(s.marks);
fprintf('%s (%d): mean = %.1f\n', s.name, s.index, s.mean);

%% Struct array: many of the same record
student(1).name = "Ama";  student(1).mark = 78;
student(2).name = "Kofi"; student(2).mark = 65;
student(3).name = "Esi";  student(3).mark = 91;
allMarks = [student.mark];                 % gather one field across all
fprintf('class mean = %.1f\n', mean(allMarks));

%% Table: the spreadsheet in MATLAB
T = table(["Ama";"Kofi";"Esi"], [78;65;91], ...
          'VariableNames', {'Name','Mark'});
T.Grade = T.Mark >= 50;                     % add a column
disp(sortrows(T, 'Mark', 'descend'));
fprintf('mean mark in table = %.1f\n', mean(T.Mark));

%% control_flow_demo.m
% TE 255 - Lecture 2: if / switch / for / while.

%% if / elseif / else
mark = 72;
if mark >= 70
    grade = "A";
elseif mark >= 60
    grade = "B";
elseif mark >= 50
    grade = "C";
else
    grade = "F";
end
fprintf('mark %d -> grade %s\n', mark, grade);

%% switch: one value, many cases
unit = "kg";
switch unit
    case "kg",         factor = 1000;      % to grams
    case {"lb","lbs"}, factor = 453.592;
    otherwise,         factor = NaN;
end
fprintf('1 %s = %g g\n', unit, factor);

%% for loop
total = 0;
for k = 1:5
    total = total + k;
end
fprintf('sum 1..5 = %d\n', total);

%% while loop
n = 1;
while 2^n < 1000
    n = n + 1;
end
fprintf('smallest n with 2^n >= 1000 is %d (2^%d = %d)\n', n, n, 2^n);

%% break / continue
kept = [];
for k = 1:100
    if k == 7,  continue;  end   % skip 7
    if k > 10,  break;     end   % stop after 10
    kept(end+1) = k; %#ok<SAGROW>  (small loop; preallocate for big ones)
end
fprintf('kept: '); disp(kept);

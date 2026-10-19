%% text_processing_demo.m
% TE 255 - Lecture 4: working with strings.

s = "Problem Solving Using MATLAB";
fprintf('length      : %d\n', strlength(s));
fprintf('upper       : %s\n', upper(s));
fprintf('contains ?  : %d\n', contains(s, "MATLAB"));
fprintf('after Using : %s\n', extractAfter(s, "Using "));

parts = split(s, " ");                 % ["Problem";"Solving";...]
fprintf('words       : %d\n', numel(parts));
fprintf('joined      : %s\n', join(parts, "-"));

%% Parse a messy CSV-like line
raw  = " 181211 , Ama ,  78 ";
f    = strtrim(split(raw, ","));       % trim ends of each piece
idx  = str2double(f(1));
name = f(2);
mark = str2double(f(3));
fprintf('parsed: index=%d name=%s mark=%d\n', idx, name, mark);

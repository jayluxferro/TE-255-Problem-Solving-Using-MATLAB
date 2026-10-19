function letter = grade_of(mark)
%GRADE_OF  Map a 0..100 mark to a letter grade.
%   letter = GRADE_OF(mark) returns "A", "B", "C" or "F".
    if     mark >= 70
        letter = "A";
    elseif mark >= 60
        letter = "B";
    elseif mark >= 50
        letter = "C";
    else
        letter = "F";
    end
end

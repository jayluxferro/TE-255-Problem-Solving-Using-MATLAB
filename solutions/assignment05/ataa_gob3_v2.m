%% Coding Assignment V - Ataa Gob3 with functions, globals and a bar chart
% Reference solution. Egg price and discount are global constants read by
% calculateFoodPrice (same folder). Also plots the daily student counts.

global EGG_PRICE DISCOUNT     %#ok<GVMIS>  (globals used per the assignment brief)
EGG_PRICE = 1.2;              % GHC
DISCOUNT  = 0.055;            % 5.5%

days     = ["Monday","Tuesday","Wednesday","Thursday","Friday"];
BG       = [2   3   2.5 1.5 2  ];
RP       = [1   2   2   2   2  ];
PR       = [2   2   1.5 1.5 2  ];
students = [500 510 480 500 570];

dailySales = zeros(1, numel(days));
for i = 1:numel(days)
    perStudent    = calculateFoodPrice(BG(i), RP(i), PR(i));
    dailySales(i) = students(i) * perStudent;
end
weekTotal = sum(dailySales);

fprintf('Ataa Gob3 - expected weekly sales (after %.1f%% discount)\n', DISCOUNT*100);
fprintf('%-10s %12s\n', 'Day', 'Sales (GHC)');
for i = 1:numel(days)
    fprintf('%-10s %12.2f\n', days(i), dailySales(i));
end
fprintf('%-10s %12.2f\n', 'TOTAL', weekTotal);

% Bar graph of the average number of students per day
figure;
bar(students);
xticklabels(days);
xlabel('Day'); ylabel('Average number of students');
title('Ataa Gob3 - daily student visits');

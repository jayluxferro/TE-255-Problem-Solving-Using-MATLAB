%% Coding Assignment II - Ataa Gob3 weekly sales (reference solution)
% Each student's meal is a combination of beans & gari (BG), ripe plantain
% (RP), plain rice (PR) and an egg. The table gives the per-day item prices
% (GHC) and the average number of students. Sister Ataa offers 5.5% discount.

days     = ["Monday","Tuesday","Wednesday","Thursday","Friday"];
BG       = [2   3   2.5 1.5 2  ];     % GHC
RP       = [1   2   2   2   2  ];     % GHC
PR       = [2   2   1.5 1.5 2  ];     % GHC
students = [500 510 480 500 570];

eggPrice = 1.2;      % GHC
discount = 0.055;    % 5.5%

mealCost   = BG + RP + PR + eggPrice;           % cost per student, per day
dailySales = students .* mealCost * (1 - discount);
weekTotal  = sum(dailySales);

fprintf('Ataa Gob3 - expected weekly sales (after %.1f%% discount)\n', discount*100);
fprintf('%-10s %12s\n', 'Day', 'Sales (GHC)');
for i = 1:numel(days)
    fprintf('%-10s %12.2f\n', days(i), dailySales(i));
end
fprintf('%-10s %12.2f\n', 'TOTAL', weekTotal);

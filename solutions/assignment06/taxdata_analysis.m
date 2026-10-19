%% Coding Assignment VI - taxdata analysis (reference solution)
% 1) read the Excel data, 2) bar the min/avg/max labor tax,
% 3) fit the number of tax payments -> labor tax and find the best poly order.
%
% The brief mentions xlsread (legacy). readtable is the modern, more robust
% replacement and is used here; it also gives us columns by name.

here     = fileparts(mfilename('fullpath'));
dataFile = fullfile(here, '..', '..', 'data', 'taxdata.xlsx');

w = warning('off', 'MATLAB:table:ModifiedAndSavedVarnames');
T = readtable(dataFile, 'VariableNamingRule', 'modify');
warning(w);

labor    = T.LaborTax;
payments = T.NumberOfTaxPayments;

ok = ~isnan(labor) & ~isnan(payments);      % keep complete rows
labor = labor(ok);  payments = payments(ok);

%% Task 2: min / average / max labor tax
stats3 = [min(labor), mean(labor), max(labor)];
fprintf('Labor tax  -> min %.2f, avg %.2f, max %.2f\n', stats3);

figure;
subplot(1,2,1);
bar(categorical({'min','average','max'}), stats3);
ylabel('Labor tax'); title('Labor tax summary');

%% Task 3: fit payments -> labor tax, compare polynomial orders
subplot(1,2,2);
scatter(payments, labor, 20, 'filled'); hold on
xs = linspace(min(payments), max(payments), 200);

orders = 1:4;
leg = "data";
fprintf('\nPolynomial fit (payments -> labor tax):\n');
for n = orders
    c    = polyfit(payments, labor, n);
    yhat = polyval(c, payments);
    R2   = 1 - sum((labor - yhat).^2) / sum((labor - mean(labor)).^2);
    fprintf('  order %d : R^2 = %.4f\n', n, R2);
    plot(xs, polyval(c, xs), 'LineWidth', 1.2);
    leg(end+1) = sprintf("order %d (R^2=%.2f)", n, R2); %#ok<SAGROW>
end
hold off
xlabel('Number of tax payments'); ylabel('Labor tax');
title('Payments vs labor tax'); legend(leg, 'Location', 'best');

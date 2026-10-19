%% tax_fit_demo.m
% TE 255 - Lecture 3: read a real dataset, fit a line, predict.
% Dataset: data/taxdata.xlsx (cross-country corporate tax rates).
% We model the 5-year EFFECTIVE tax rate as a function of the STATUTORY rate.

here     = fileparts(mfilename('fullpath'));
dataFile = fullfile(here, '..', '..', 'data', 'taxdata.xlsx');

w = warning('off', 'MATLAB:table:ModifiedAndSavedVarnames');  % headers cleaned to valid names
T = readtable(dataFile, 'VariableNamingRule', 'modify');      % table with valid column names
warning(w);                                                   % restore warning state
x = T.StatutoryCorporateTaxRate;         % predictor
y = T.x5_YearEffectiveTaxRate;           % response

ok = ~isnan(x) & ~isnan(y);              % drop missing rows
x  = x(ok);  y = y(ok);

c = polyfit(x, y, 1);                    % [slope intercept]
fprintf('Countries used      : %d\n', numel(x));
fprintf('Effective ~ %.3f * Statutory + %.3f\n', c(1), c(2));
fprintf('Predicted effective rate at 30%% statutory: %.2f%%\n', polyval(c, 30));

figure;
scatter(x, y, 25, 'filled'); hold on
xs = linspace(min(x), max(x), 50);
plot(xs, polyval(c, xs), 'LineWidth', 1.5);
xlabel('Statutory corporate tax rate (%)');
ylabel('5-year effective tax rate (%)');
title('Effective vs statutory corporate tax rate');
legend('countries', 'linear fit', 'Location', 'northwest'); grid on

%% Coding Assignment IV - Mr Hanson driver payroll (reference solution)
% Drivers are paid 30% of each day's total sales. Compute the daily payable
% amount and the weekly total. The 30% rate is held as a global constant and
% is read by calculatePayableDailySales (same folder), not passed to it.

global DRIVER_RATE          %#ok<GVMIS>  (global used per the assignment brief)
DRIVER_RATE = 0.30;

days       = ["Monday","Tuesday","Wednesday","Thursday","Friday"];
numDrivers = [120 110 95  125 114];
avgSales   = [1200 1350 1100 1400 1300];     % GHC per driver

weekTotal = 0;
fprintf('Mr Hanson - daily amount payable to drivers (30%% of sales)\n');
fprintf('%-10s %14s\n', 'Day', 'Payable (GHC)');
for i = 1:numel(days)
    payable   = calculatePayableDailySales(numDrivers(i), avgSales(i));
    weekTotal = weekTotal + payable;
    fprintf('%-10s %14.2f\n', days(i), payable);
end
fprintf('%-10s %14.2f\n', 'WEEK', weekTotal);

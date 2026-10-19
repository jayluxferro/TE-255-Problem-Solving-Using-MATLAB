%% curve_fitting_demo.m
% TE 255 - Lecture 3: least-squares fitting with polyfit, and R^2.

x = [1 2 3 4 5 6];
y = [2.1 3.9 6.2 7.8 10.1 11.9];      % roughly linear, with noise

c = polyfit(x, y, 1);                  % [slope intercept]
yhat = polyval(c, x);

% Coefficient of determination R^2
ss_res = sum((y - yhat).^2);
ss_tot = sum((y - mean(y)).^2);
R2 = 1 - ss_res/ss_tot;

fprintf('fit: y = %.3f*x + %.3f\n', c(1), c(2));
fprintf('R^2 = %.4f\n', R2);

figure;
plot(x, y, 'o', 'MarkerFaceColor', 'auto'); hold on
plot(x, yhat, '-', 'LineWidth', 1.5);
xlabel('x'); ylabel('y'); title('Linear least-squares fit');
legend('data', 'fit', 'Location', 'northwest'); grid on

%% Coding Assignment III - twoLinePlot.m (reference solution)
% Plot a sine and a cosine wave over one period on the same axes.

figure                                  % a fresh figure
t = linspace(0, 2*pi, 400);             % smooth time vector, one period

plot(t, sin(t));                        % sine, default blue line
hold on                                 % keep existing lines
plot(t, cos(t), 'r--');                 % cosine, red dashed line
hold off

xlabel('t (radians)');
ylabel('amplitude');
title('Sine and cosine over one period');
legend('Sin', 'Cos');

xlim([0 2*pi]);                         % tidy the axes
ylim([-1.4 1.4]);

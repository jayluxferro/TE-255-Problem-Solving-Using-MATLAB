%% plotting_basics_demo.m
% TE 255 - Lecture 2: a labelled figure with two series.

x = linspace(0, 2*pi, 200);

figure;
plot(x, sin(x), 'LineWidth', 1.5); hold on
plot(x, cos(x), '--', 'LineWidth', 1.5);
hold off

xlabel('x (radians)');
ylabel('amplitude');
title('Sine and cosine');
legend('sin(x)', 'cos(x)', 'Location', 'southwest');
grid on

% Save a vector copy for a report. We write to a temp folder here so the
% repo stays clean; in your own work, save it next to your script.
outPath = fullfile(tempdir, 'plotting_basics.pdf');
exportgraphics(gcf, outPath);
fprintf('Saved %s\n', outPath);

%% signal_analysis_demo.m
% TE 255 - Lecture 5: an end-to-end mini application.
% Represent -> process -> analyse -> visualise -> report.
% Uses analyse_signal (same folder).

rng(42);                              % reproducible noise

t     = linspace(0, 1, 500);          % 1 second
clean = sin(2*pi*5*t);                % a 5 Hz tone

figure;
snr = analyse_signal(t, clean, 0.4);  % noisy -> smoothed, returns SNR

fprintf('Estimated SNR: %.1f dB\n', snr);

% A second run with less noise should report a higher SNR:
figure;
snr2 = analyse_signal(t, clean, 0.1);
fprintf('With less noise: %.1f dB (higher, as expected: %d)\n', snr2, snr2 > snr);

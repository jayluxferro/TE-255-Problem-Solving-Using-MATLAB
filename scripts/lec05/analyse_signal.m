function snr_est = analyse_signal(t, clean, noiseLevel)
%ANALYSE_SIGNAL  Add noise to a clean signal, smooth it, estimate SNR, plot.
%   snr_est = ANALYSE_SIGNAL(t, clean, noiseLevel) returns the estimated
%   signal-to-noise ratio in dB. noiseLevel defaults to 0.4.
    arguments
        t          (1,:) double
        clean      (1,:) double
        noiseLevel (1,1) double = 0.4
    end
    noisy    = clean + noiseLevel * randn(size(t));
    smoothed = movmean(noisy, 15);
    snr_est  = 10 * log10( var(clean) / var(noisy - clean) );

    plot(t, noisy, 'Color', [.7 .7 .7]); hold on
    plot(t, smoothed, 'LineWidth', 1.5); hold off
    xlabel('t (s)'); ylabel('amplitude');
    legend('noisy', 'smoothed'); grid on
    title(sprintf('Estimated SNR = %.1f dB', snr_est));
end

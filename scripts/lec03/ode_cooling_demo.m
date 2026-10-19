%% ode_cooling_demo.m
% TE 255 - Lecture 3: Newton's law of cooling via ode45.
%   dT/dt = -k * (T - Tenv)

k    = 0.3;       % cooling rate (1/min)
Tenv = 25;        % ambient temperature (C)
T0   = 90;        % initial temperature (C)

dTdt = @(t, T) -k * (T - Tenv);          % the rate (a function handle)

[t, T] = ode45(dTdt, [0 20], T0);        % integrate 0..20 minutes

fprintf('T(0)  = %.1f C\n', T(1));
fprintf('T(20) = %.1f C (approaches Tenv = %d C)\n', T(end), Tenv);

figure;
plot(t, T, 'LineWidth', 1.5); grid on
yline(Tenv, '--');
xlabel('t (min)'); ylabel('T (C)'); title('Newton cooling');
legend('T(t)', 'ambient');

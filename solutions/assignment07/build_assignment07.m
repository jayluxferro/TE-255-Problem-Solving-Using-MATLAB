%% build_assignment07.m - construct the Assignment VII Simulink model.
% "Influence of noise on a signal source": two Sine Wave sources (signal and
% noise) are summed and shown on a Scope. Running this script regenerates
% assignment07_noise.slx next to it.

sys = 'assignment07_noise';
if bdIsLoaded(sys), close_system(sys, 0); end
new_system(sys);

add_block('simulink/Sources/Sine Wave', [sys '/Signal'], ...
    'Amplitude','12', 'Frequency','3*pi/4', 'Phase','pi/2', ...
    'Position',[60 50 100 90]);
add_block('simulink/Sources/Sine Wave', [sys '/Noise'], ...
    'Amplitude','5', 'Frequency','pi/2', 'Phase','pi', ...
    'Position',[60 150 100 190]);
add_block('simulink/Math Operations/Add', [sys '/Add'], ...
    'Inputs','++', 'Position',[180 95 210 145]);
add_block('simulink/Sinks/Scope', [sys '/Scope'], ...
    'Position',[300 105 330 135]);

add_line(sys, 'Signal/1', 'Add/1',  'autorouting','on');
add_line(sys, 'Noise/1',  'Add/2',  'autorouting','on');
add_line(sys, 'Add/1',    'Scope/1','autorouting','on');

set_param(sys, 'StopTime','10');

here = fileparts(mfilename('fullpath'));
save_system(sys, fullfile(here, [sys '.slx']));
close_system(sys, 0);
fprintf('Built %s.slx\n', sys);

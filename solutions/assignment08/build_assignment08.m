%% build_assignment08.m - construct the Assignment VIII Simulink model.
% "Chop off part of a pulse with a step": a Pulse Generator is multiplied by a
% step u(t-5), so everything before t = 5 s is zeroed, shown on a Scope.
% Running this script regenerates assignment08_chop.slx next to it.

sys = 'assignment08_chop';
if bdIsLoaded(sys), close_system(sys, 0); end
new_system(sys);

add_block('simulink/Sources/Pulse Generator', [sys '/Pulse'], ...
    'Amplitude','1', 'Period','1', 'PulseWidth','10', 'PhaseDelay','0', ...
    'Position',[60 50 100 90]);
add_block('simulink/Sources/Step', [sys '/Step'], ...
    'Time','5', 'Before','0', 'After','1', ...     % u(t - 5)
    'Position',[60 150 100 190]);
add_block('simulink/Math Operations/Product', [sys '/Product'], ...
    'Inputs','2', 'Position',[180 95 210 145]);
add_block('simulink/Sinks/Scope', [sys '/Scope'], ...
    'Position',[300 105 330 135]);

add_line(sys, 'Pulse/1',   'Product/1','autorouting','on');
add_line(sys, 'Step/1',    'Product/2','autorouting','on');
add_line(sys, 'Product/1', 'Scope/1',  'autorouting','on');

set_param(sys, 'StopTime','10');

here = fileparts(mfilename('fullpath'));
save_system(sys, fullfile(here, [sys '.slx']));
close_system(sys, 0);
fprintf('Built %s.slx\n', sys);

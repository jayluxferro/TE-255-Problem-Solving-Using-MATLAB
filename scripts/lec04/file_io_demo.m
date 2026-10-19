%% file_io_demo.m
% TE 255 - Lecture 4: write and read data files.
% Output goes to a temporary folder so the repo stays clean.

outDir = tempname;  mkdir(outDir);

%% Build a table and write it as CSV
T = table(["Ama";"Kofi";"Esi"], [78;65;91], ...
          'VariableNames', {'Name','Mark'});
csvPath = fullfile(outDir, 'results.csv');
writetable(T, csvPath);
fprintf('wrote %s\n', csvPath);

%% Read it back
T2 = readtable(csvPath);
fprintf('read back %d rows; mean mark = %.1f\n', height(T2), mean(T2.Mark));

%% save / load MATLAB variables (.mat)
matPath = fullfile(outDir, 'session.mat');
save(matPath, 'T');
clear T
S = load(matPath);            % loads into a struct
fprintf('loaded table with columns: %s\n', strjoin(S.T.Properties.VariableNames, ', '));

%% Low-level text file (always fclose!)
txtPath = fullfile(outDir, 'report.txt');
fid = fopen(txtPath, 'w');
fprintf(fid, 'Name,Mark\n');
for i = 1:height(T2)
    fprintf(fid, '%s,%d\n', T2.Name{i}, T2.Mark(i));
end
fclose(fid);
fprintf('wrote %s (%d bytes)\n', txtPath, dir(txtPath).bytes);

rmdir(outDir, 's');           % clean up the temp folder
fprintf('cleaned up temporary files\n');

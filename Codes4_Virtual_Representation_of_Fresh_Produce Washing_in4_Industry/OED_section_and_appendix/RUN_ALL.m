%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE: OED Washing Process
% AUTHORS: Moreno-Razoa, Martínez-López, Vilas, Tudela, Gil, García
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
run ../AMIGO2_R2025/AMIGO_Startup.m  % Initialize AMIGO toolbox
% 
% %% Modify AMIGO to allow error_data input
% % This section edits the AMIGO_check_OED_data.m file to enable error_data input
% 
% filePath = 'AMIGO_check_OED_data.m';              % Path to the file
% fileContent = readlines(filePath);                % Read file content
% fileContent(253) = "%inputs.exps.error_data{iexp}=[]; %comment this to allow error data input";
% writelines(fileContent, filePath);                % Write modified content back
% 
% % NOTE: Make sure line 253 is correct for AMIGO2_R2025 version only
% % If the line number changes, this will need to be updated.

%% 1. Run OED and non-OED experiment simulations
main_OED_and_nonOED_exps;  % Generates experimental designs and confidence intervals
% If commented, precomputed data will be loaded from 'results' folder

%% 2. Run CorePred simulations for both experiments
main_CorePred;  % Performs predictive simulations using confidence intervals
% If commented, precomputed data will be loaded from 'results' folder

%% 3. Generate plots and figures
main_plot;  % Creates visualizations for analysis and publication

%% 4. Save all results
save('results/dataAll');  % Save all workspace data to a .mat file
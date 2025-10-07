%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE:  Washing Process Modelling
% AUTHORS: Moreno-Razoa, Martínez-López, Vilas, Tudela, Gil, García
% Email: miriamr@iim.csic.es
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

%% 1. Run parameter estimation (PE) when the process is without disinfectant (only contamiantion)
Run_sec311_PE_contamination;  

%% 2. Run parameter estimation (PE) when the process is with disinfectant (including inactivation paramters)
Run_sec312_PE_inactivation;

%% 3. Run parameter estimation (PE) related with FC and COD interaction
Run_sec313_PE_Beta_and_Gamma;

%% 4. Run Optimal experimental design (OED) non-OED results
RUN_sec320_OED;
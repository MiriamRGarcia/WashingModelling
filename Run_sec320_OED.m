%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main file to run OED of Fresh Produce Washing Process
% 2025 - Moreno et al   - Virtual Representation of Fresh Produce Washing 
%                         in 4.0 Industry: Modelling and calibration 
%                         through optimal experimental design
%
% Optimal Experimental Design
%=========================================================================%
clear all
close all

%% ====================================================================
%%% Preprocessing 
%%%====================================================================
    
    %Load AMIGO files. For downloading or installation of the toolbox see: sites.google.com/site/amigo2toolbox
    run AMIGO2_R2025/AMIGO_Startup.m
    addpath('AMIGO_changes/')

%% ====================================================================
%%% Calculations

%%%====================================================================
%% 1. Run OED and non-OED experiment simulations
run('./OED_codes/main_OED_and_nonOED_exps');  % Generates experimental designs and confidence intervals
% If commented, precomputed data will be loaded from 'results' folder

%% 2. Run CorePred simulations for both experiments
run('./OED_codes/main_CorePred');  % Performs predictive simulations using confidence intervals
% If commented, precomputed data will be loaded from 'results' folder


%% ====================================================================
%%% Postprocessing
%%%====================================================================

%% 3. Generate plots and figures
run('./OED_codes/main_OED_postProcess');  % Creates visualizations for analysis and publication


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main file to run parameter estimation with AMIGO for the model in:
% 2023 - Pedreira et al - Modelling the antimicrobial effect of food
%                         preservatives in bacteria: application to
%                         E. coli and B. cereus inhibition with carvacrol
%=========================================================================%
clear all
close all

for bla=1:3 %prev
    close all
    clear inputs x1 x2
    
    %% ========================================================================
    %%% Preprocessing required for AMIGO toolbox
    %%%========================================================================
    
    %run /home/miriam/Dropbox/Apps/AMIGO2_R2019b_MRG/AMIGO_Startup                                                       % Load AMIGO files. For downloading or installation of the toolbox see: sites.google.com/site/amigo2toolbox
    
    %% ========================================================================
    %%% Load options common to all model optimisations
    %%%========================================================================
    
    % Save AMIGO results in:
    inputs.pathd.results_folder   = ['NoDisinfectant_Dglobal_cteM_0p5Error'];                        % Name of the folder to keep results (in Results from AMIGO) for a given problem
    inputs.pathd.runident=  [num2str(bla)];
    % Type of experimental data:
    inputs.model.exe_type         = 'standard';
    inputs.exps.data_type         = 'real';                                    % Type of data: 'pseudo'|'pseudo_pos'|'real'
    
    % Numerical methods for parameter estimation:
    inputs.model.input_model_type = 'charmodelC';                              % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|
    inputs.ivpsol.ivpsolver       = 'cvodes';                                  % [] IVP solver: 'radau5'(default, fortran)|'rkf45'|'lsodes'|'lsodesst'|'lsoda'|'ode15s' (default, MATLAB, sbml)|'ode113'
    inputs.nlpsol.nlpsolver       = 'local_fmincon';                           % 'local_fmincon'|'local_n2fb'|'local_dn2fb'|'local_dhc'|
    inputs.nlpsol.nlpsolver       = 'local_solnp';
    %
    % Uncomment for global optimizations:
    % -----------------------------------------------------------------
    inputs.nlpsol.nlpsolver       = 'eSS';%'de';                               % Perform estimation using Enhaced Scatter Search.
    inputs.nlpsol.eSS.maxeval     = 1e100;                                       % Maximum number of evaluations of the objective function,
    inputs.nlpsol.eSS.maxtime     =2*60*60;  %prev                                % Maximum time for optimisation,
    
    inputs.nlpsol.eSS.local.solver='solnp';
    %inputs.nlpsol.eSS.local.finish='solnp';
    % % % inputs.nlpsol.eSS.local.iterprint=10;
    inputs.nlpsol.eSS.local.n2=10;
    inputs.nlpsol.eSS.local.n1=30;
    
    %% ========================================================================
    %%% Fit mechanistic model to CFUS/mL data
    %%%========================================================================
    
    mod = 'WASHTOP';                                                  % Name of the file containing the AMIGO model,
    Run_input_data
    
    % Run Parameter estimation (PE) and PostAnalysis:
    %-----------------------------------------------------------------
    AMIGO_Prep(inputs)                                                     % Preparation of AMIGO toolbox
    res = AMIGO_PE(inputs);     % Matlab structure with the calibration results
    
    
    % %% ========================================================================
    % %%% Run postprocess (figures and tables)
    % %%%========================================================================
    run PostProcess_final_obj1
end
play_alert
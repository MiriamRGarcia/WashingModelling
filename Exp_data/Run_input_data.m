%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File to define in AMIGO the model in:
% 2023 - Pedreira et al - Modelling the antimicrobial effect of food
%                         preservatives in bacteria: application to
%                         E. coli and B. cereus inhibition with carvacrol
%=========================================================================%
%'HOCl=FC/(1+(10^-((3000/TT)+0.0253*TT-10.0686)/10^-pH))'
%==========================================================================
% Model related data
%==========================================================================
inputs.model.n_st           = 2;                                           % Number of model states
inputs.model.n_par          = 3;                                           % Number of model parameters
inputs.model.n_stimulus     = 2;                                           % Number of inputs (caravacrol concentration)
inputs.model.st_names       = char('Xw','COD');                             % Names of the states ('YY = Bacterial concentration in log10 scale' and 'SS = cell state')
inputs.model.par_names      = char('DD','K_X','K_COD');     % Names of the parameters
inputs.model.stimulus_names = char('MM','VV');                                  % Names of the stimuli, inputs or controls
inputs.model.eqns           = char('dXw =-DD*Xw +(MM/VV)*K_X',...
    'dCOD=-DD*COD+(MM/VV)*K_COD');


%==========================================================================
% Load experimental data
%==========================================================================
    ods = 'Exp_data/Data_WithoutDisinfectant.xlsx';
    % Case without disinfectant:
    dat = build_dat_from_ods(ods, 'Exp_data_WithoutDisinfectant');

myname=[inputs.pathd.results_folder,'_',inputs.pathd.runident]; 


    prev_res=load('Pre_optims/Best_results_sec311_PE_contamination.mat');
    opt=prev_res.res.fit.thetabest'
    myname=[inputs.pathd.results_folder,'_ropt_',num2str(trial)];
    flag_reopt=1;
    clear prev_res

    inputs.model.par     =   [0
                              0
                              0.567517]'; %%% 0.060
    inputs.exps.n_exp    =  size(dat.info,2);                              % Number of experiments
    ng = 1;


% =========================================================================
% Experimental scheme related data
%==========================================================================
%inputs.exps.n_exp  =1
count_t=ng;
for iexp = 1:inputs.exps.n_exp                                             % Loop in the number of experiments (different carvacrol concentrations)
    clear x1 x2
    % Define experimental times:
    %-----------------------------------------------------------------
    inputs.exps.t_f{iexp} = dat.ts{iexp}(end);                                % Experiments duration
    inputs.exps.n_s{iexp} = size(dat.ts{iexp},2);                             % Number of sampling times
    inputs.exps.t_s{iexp} = dat.ts{iexp};                                    % [] Sampling times, by default equidistant

    % Define input:
    %-----------------------------------------------------------------
    %   inputs.exps.u_interp{iexp} = 'linear';                              % Stimuli definition                                                    %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
    inputs.exps.u_interp{iexp}='linear';
    inputs.exps.n_linear{iexp}=size(dat.ts{iexp},2);
    inputs.exps.t_con{iexp}=[dat.ts{iexp}];
    FM=dat.tau{iexp}*dat.Kgp{iexp}(end)/dat.ts{iexp}(end);    
    inputs.exps.u{iexp}        = [
        FM*ones(size(dat.pH{iexp}))
        dat.V{iexp}];                                                  % Values of the inputs
    
    disp('zeros are 1cfus/100ml')
    %-----------------------------------------------------------------
    inputs.exps.exp_y0{iexp}   = [dat.Nw{iexp}(1) dat.COD{iexp}(1)];                  % Initial conditions for each experiment
    
    % Define experimental data:
    %-----------------------------------------------------------------
    inputs.exps.exp_data{iexp} = [log10(0.1*dat.Nw{iexp}+1)' dat.COD{iexp}'];   % Experimental concentration in log10 scale
    
    % Define model observables (bacterial concentration, log10(CFUs/mL)):
    %-----------------------------------------------------------------
    inputs.exps.n_obs{iexp}     = 2;                                       % Number of observed quantities per experiment
    inputs.exps.obs_names{iexp} = char('log10CFUs','yCOD');                       % Name of the observable
    inputs.exps.obs{iexp}       = char('log10CFUs=log10(0.1*Xw+1)','yCOD=COD');                    % The observable is the bacterial concentration in a log10 scale
    
    %     % Define cost function (time-weighted least squares):
    %     %-----------------------------------------------------------------
    %     inputs.PEsol.PEcost_type    = 'lsq';                                 % The cost function is 'lsq' = least squares
    %     inputs.PEsol.lsq_type       = 'Q_expmax';                                 % Define weights names for lsq
    %

    inputs.PEsol.id_local_theta{iexp}=char('K_COD','K_X');                % [] 'all'|User selected| 'none' (default)
    inputs.PEsol.local_theta_max{iexp}=[ 1e5    1e12  ];
    inputs.PEsol.local_theta_min{iexp}=[0,0];
    if flag_reopt==1;
    nl=size(inputs.PEsol.id_local_theta{iexp},1);
    inputs.PEsol.local_theta_guess{iexp}=opt(count_t+[1:nl]);
    count_t=count_t+nl;
    end

 
     % Define cost function (time-weighted least squares):
    %-----------------------------------------------------------------
    inputs.PEsol.PEcost_type='llk';                                        % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
    x1(log10(dat.Nw{iexp}')<=2)=0.5;
    x1(log10(dat.Nw{iexp}')>2)=0.5;
    x2(dat.COD{iexp}>=0)=10;
    
    inputs.exps.error_data{iexp}=[x1' x2'];


end


%==========================================================================
% UNKNOWNS RELATED DATA
%==========================================================================
% GLOBAL UNKNOWNS (SAME VALUE FOR ALL EXPERIMENTS)
inputs.PEsol.id_global_theta = char('DD')
 inputs.PEsol.global_theta_max   = [0.1];          % Maximum allowed values for the paramters
 inputs.PEsol.global_theta_min   = [0];           % Minimum allowed values for the parameters
 if flag_reopt==1;
 inputs.PEsol.global_theta_guess = opt(1:ng);                        % Initial guess of model parameters
 end


inputs.nlpsol.eSS.log_var=[1:inputs.exps.n_exp*2+1];

% %==========================================================================
% % SAVE MODEL
% %==========================================================================
% inputs.pathd.short_name = 'test';
% inputs.plotd.plotlevel  = 'none';


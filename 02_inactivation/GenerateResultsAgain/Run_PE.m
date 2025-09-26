%clear all

run /home/miriam/Dropbox/Apps/AMIGO2_R2019b_MRG/AMIGO_Startup.m

ff='Results_finally_selected_for_D5_afterRev1';

for nbla=1:10
    
    close all; clearvars -EXCEPT nbla ff
    %% ========================================================================
    %%% Options commonly to change
    %%%========================================================================
    resna='er0p5'
    e_DL=0.5;
    e_noDL=0.5;
    % Name of the file containing the AMIGO model,
    
    % Type of experimental data:
    mod = 'WASHTOP';
    % Numerical methods for parameter estimation:
    inputs.ivpsol.ivpsolver       = 'cvodes';                                           % [] IVP solver: 'radau5'(default, fortran)|'rkf45'|'lsodes'|'lsodesst'|'lsoda'|'ode15s' (default, MATLAB, sbml)|'ode113'
    inputs.nlpsol.nlpsolver       = 'local_fminsearch';                                 % 'local_fmincon'|'local_n2fb'|'local_dn2fb'|'local_dhc'|
    %inputs.nlpsol.nlpsolver       = 'local_solnp';
    inputs.nlpsol.nlpsolver       = 'local_solnp';
    %_n2fb
    % Uncomment for global optimizations:
    % -----------------------------------------------------------------
    inputs.nlpsol.nlpsolver       = 'eSS';%'de';                                        % Perform estimation using Enhaced Scatter Search.
    inputs.nlpsol.eSS.maxeval     = 1e100;                                              % Maximum number of evaluations of the objective function,
    inputs.nlpsol.eSS.maxtime     =10*60; %prev                                        % Maximum time for optimisation,                                      % Maximum time for optimisation,;                                        % Maximum time for optimisation,
    
    
    inputs.nlpsol.eSS.local.solver='solnp';
    inputs.nlpsol.eSS.local.finish='solnp';
    
    inputs.nlpsol.eSS.ndiverse=164;
    
    
    
    inputs.nlpsol.eSS.ndiverse=50;
    
    inputs.model.exe_type         = 'standard';
    inputs.exps.data_type         = 'real';                                             % Type of data: 'pseudo'|'pseudo_pos'|'real'
    
    %% ==========================================================================
    % Load experimental data
    %==========================================================================
    iexp=0;
    aqui=pwd
    cd('Exp_data_WithDisinfectant')
    run data_case09
    run data_case11
    run data_case15
    run data_case16
    run data_case18
    run data_case19
    run data_case20
    run data_case22
    run data_case25
    run data_case26
    run data_case28
    %run data_case29 %%% change of product
    run data_case35
    run data_case36
    run data_case37
    run data_case38
    run data_case39
    run data_case40
    run data_case41
    run data_case42
    run data_case43
    run data_case44
    run data_case45
    run data_case46
    run data_case47
    run data_case48
    run data_case60
    run data_case61
    cd(aqui)
    inputs.exps.n_exp             = size(dat.ts,2);
    %==========================================================================
    % SAVE MODEL
    %==========================================================================
    inputs.pathd.short_name = 'test';
    inputs.plotd.plotlevel  = 'none';
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Main file to run parameter estimation with AMIGO for the model in:
    % 2023 - Pedreira et al - Modelling the antimicrobial effect of food
    %                         preservatives in bacteria: application to
    %                         E. coli and B. cereus inhibition with carvacrol
    %=========================================================================%
    
    % YD_cteMonly_LocalKiKmKmL-GlobalAAL
    
    %% ========================================================================
    %%% Preprocessing required for AMIGO toolbox
    %%%========================================================================
    
    %run /home/miriam/Dropbox/Apps/AMIGO2_R2019b_MRG/AMIGO_Startup                                                       % Load AMIGO files. For downloading or installation of the toolbox see: sites.google.com/site/amigo2toolbox
    
    
    bla2=pwd;ind=find(bla2=='/');resulname=[bla2(ind(end)+1:end)];  	% Save AMIGO results in:
    inputs.pathd.results_folder   = [resulname,'_Run',resna,num2str(nbla)];                              % Name of the folder to keep results (in Results from AMIGO) for a given problem
    inputs.pathd.runident=  [num2str(nbla)];
    inputs.pathd.results_folder=[inputs.pathd.results_folder,'_cpu',round(num2str(inputs.nlpsol.eSS.maxtime/60))]
    %==========================================================================
    % Model related data
    %==========================================================================
    inputs.model.input_model_type = 'charmodelC';                                       % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|
    inputs.model.n_st           = 3;                                                    % Number of model states
    inputs.model.n_par          = 10;                                                    % Number of model parameters
    inputs.model.n_stimulus     = 5;                                                    % Number of inputs (caravacrol concentration)
    inputs.model.st_names       = char('Xw','COD','XwL');                               % Names of the states ('YY = Bacterial concentration in log10 scale' and 'SS = cell state')
    inputs.model.par_names      = char('DD','K_X','K_COD','K_XL','Km','KmL','alpha','alphaL','nn','nL');     % Names of the parameters
    inputs.model.stimulus_names = char('FC','pH','TT','MM','VV');                                  % Names of the stimuli, inputs or controls
    inputs.model.eqns           = char('HOCl=FC/(1.0+(pow(10.0,-((3000.0/(TT+273.15)))+0.0253*(TT+273.15)-10.0686)/pow(10.0,-pH)))',...
        'dXw  =-DD*Xw  +(MM/VV)*K_X   -alpha*(Km^nn/(COD^nn+Km^nn))*Xw*HOCl',...
        'dXwL =-DD*XwL +(MM/VV)*K_XL  -alphaL*(Km^nn/(COD^nn+Km^nn))*XwL*HOCl',...
        'dCOD =-DD*COD +(MM/VV)*K_COD ');
    inputs.model.par            =   [ 0.0033749  100 100 100  1e4 1e4 0 0 1 1]; %%% 0.060
    
    %==========================================================================
    % Load experimental data
    %==========================================================================
    
    
    flag_reopt=0;
    if nbla==1
        prev_res=load('temp_init_only_for_here.mat');
        opt=prev_res.res.fit.thetabest';
        flag_reopt=1;
        iii=(size(opt,2)-2)/54;
        alpha=opt(1);
        alphaL=opt(2);
        KX=opt(3:iii:end); % Kx
        K_COD=opt(4:iii:end); % Kcod
        K_XL =opt(5:iii:end); % Kxl
        %         Km=opt(6:iii:end); % alpha
        %         KmL=opt(7:iii:end); % alphaL
        opt=[];
        %%% if comming from other code
        opt=[alpha alphaL];
        for ibla=1:inputs.exps.n_exp
            opt=[opt KX(ibla) K_COD(ibla) K_XL(ibla) 1e3];
        end
        %%%%%%
    else
        prev_res=load('temp.mat');
        opt=prev_res.res.fit.thetabest';
        flag_reopt=1;
        
        
    end
    clear prev_res
    inputs.PEsol.id_global_theta = char('alpha','alphaL')
    ng = size(inputs.PEsol.id_global_theta,1);
    inputs.PEsol.global_theta_max=[15 15  ];
    inputs.PEsol.global_theta_min=[0 0  ];
    inputs.PEsol.global_theta_guess=opt(1:ng);
    %     inputs.PEsol.id_global_theta = char('none')
    
    
    % Number of experiments
    
    
    
    % =========================================================================
    % Experimental scheme related data
    %==========================================================================
    inputs.model.exe_type         = 'standard';
    inputs.exps.data_type         = 'real';                                             % Type of data: 'pseudo'|'pseudo_pos'|'real'
    %inputs.exps.n_exp  =1
    
    count_t=ng;
    for iexp = 1:inputs.exps.n_exp                                             % Loop in the number of experiments (different carvacrol concentrations)
        clear x1 x2
        % Define experimental times:
        %-----------------------------------------------------------------
        inputs.exps.t_f{iexp} = dat.ts{iexp}(end);                                % Experiments duration
        inputs.exps.n_s{iexp} = size(dat.ts{iexp},2);                             % Number of sampling times
        inputs.exps.t_s{iexp} = dat.ts{iexp};                                    % [] Sampling times, by default equidistant
        if iexp==19
            inputs.exps.t_f{iexp} =inputs.exps.t_f{iexp} +0.1;
        end
        % Define input:
        %-----------------------------------------------------------------
        inputs.exps.u_interp{iexp} = 'linear';                              % Stimuli definition                                                    %OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
        inputs.exps.n_linear{iexp}=size(dat.ts{iexp},2);
        inputs.exps.t_con{iexp}=[dat.ts{iexp}];
        
        FM=dat.tau{iexp}*dat.Kgp{iexp}(end)/dat.ts{iexp}(end);
        inputs.exps.u{iexp}        = [dat.Dis{iexp};
            dat.pH{iexp};
            dat.T{iexp}
            FM*ones(size(dat.pH{iexp}))
            dat.V{iexp}];                                % Values of the inputs
        
        disp('zeros are 1cfus/100ml')
        %-----------------------------------------------------------------
        inputs.exps.exp_y0{iexp}   = [dat.Nw{iexp}(1) dat.COD{iexp}(1) dat.Nlis{iexp}(1)];                  % Initial conditions for each experiment
        
        % Define experimental data:
        %-----------------------------------------------------------------
        inputs.exps.exp_data{iexp} = [log10(0.1*dat.Nw{iexp}+1)' dat.COD{iexp}' log10(0.1*dat.Nlis{iexp}+1)'];   % Experimental concentration in log10 scale
        
        % Define model observables (bacterial concentration, log10(CFUs/mL)):
        %-----------------------------------------------------------------
        inputs.exps.n_obs{iexp}     = 3;                                       % Number of observed quantities per experiment
        inputs.exps.obs_names{iexp} = char('log10CFUs','yCOD','log10Lis');                       % Name of the observable
        inputs.exps.obs{iexp}       = char('log10CFUs=log10(0.1*Xw+1)','yCOD=COD','log10Lis=log10(0.1*XwL+1)');                    % The observable is the bacterial concentration in a log10 scale
        
        inputs.PEsol.id_local_theta{iexp}=char('K_X','K_COD','K_XL','Km');                % [] 'all'|User selected| 'none' (default)
        
        inputs.PEsol.local_theta_max{iexp} = [1e11  1e5   1e7 1e3 ];
        inputs.PEsol.local_theta_min{iexp} = [0     0      0  1    ];
        
        
        nl=size(inputs.PEsol.id_local_theta{iexp},1);
        
        inputs.PEsol.local_theta_guess{iexp}=[opt(count_t+[1:nl])];
        count_t=count_t+nl;
        
        
        % Define cost function (time-weighted least squares):
        %-----------------------------------------------------------------
        inputs.PEsol.PEcost_type='llk';                                             % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
        clear x1 x2 x3
        x1(log10(dat.Nw{iexp}')<=2)=e_noDL;
        x1(log10(dat.Nw{iexp}')>2)=e_DL;
        x2(dat.COD{iexp}>=0)=10;
        x3(log10(dat.Nlis{iexp}')<=2)=e_DL;
        x3(log10(dat.Nlis{iexp}')>2)=0.5;
        
        inputs.exps.error_data{iexp}=[x1' x2'  x3'];
        
        
    end
    
    
    
    
    inputs.nlpsol.eSS.log_var=[1:inputs.exps.n_exp*nl+ng];
    
    
    
    %==========================================================================
    % SAVE MODEL
    %==========================================================================
    inputs.pathd.short_name = 'test';
    inputs.plotd.plotlevel  = 'none';
    
    %% *************************************************************************
    %%%*************************************************************************
    % Run Parameter estimation (PE) and PostAnalysis:
    %-----------------------------------------------------------------
    
    perc=0.05
    
    inputs.PEsol.global_theta_max=inputs.PEsol.global_theta_guess+1*inputs.PEsol.global_theta_guess;
    inputs.PEsol.global_theta_min=inputs.PEsol.global_theta_guess-0.01*inputs.PEsol.global_theta_guess;
    for iexp = 1:inputs.exps.n_exp
        inputs.PEsol.local_theta_max{iexp}=inputs.PEsol.local_theta_guess{iexp}+perc*inputs.PEsol.local_theta_guess{iexp};
        inputs.PEsol.local_theta_min{iexp}=inputs.PEsol.local_theta_guess{iexp}-perc*inputs.PEsol.local_theta_guess{iexp};
        inputs.PEsol.local_theta_min{iexp}(4)=1;
        inputs.PEsol.local_theta_max{iexp}(4)=1e4+1e4*perc;
        
    end
    
    
    
    AMIGO_Prep(inputs)                                                     % Preparation of AMIGO toolbox
    res = AMIGO_PE(inputs);     % Matlab structure with the calibration results
    
    
    %% *************************************************************************
    %%%*************************************************************************
    % %%% Run postprocess (figures and tables)
    % %%%========================================================================
    
    PostProcess_final_obj2
    
    
    
    
    
    
end

play_alert


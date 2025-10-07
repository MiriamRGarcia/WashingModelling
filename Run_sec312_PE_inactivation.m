%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main file to run parameter estimation with AMIGO for the model in:
% 2025 - Moreno et al   - Virtual Representation of Fresh Produce Washing 
%                         in 4.0 Industry: Modelling and calibration 
%                         through optimal experimental design
%
% Inactivation cases (disinfectant)
%=========================================================================%
clear all
close all
clc

    %% ====================================================================
    %%% Preprocessing 
    %%%====================================================================
    
        %Load AMIGO files. For downloading or installation of the toolbox see: sites.google.com/site/amigo2toolbox
        run AMIGO2_R2025/AMIGO_Startup.m
        addpath('AMIGO_changes/')

        % Load path to retrieve experimental data
        addpath('Exp_data/')
        trial=1;
    
    %% ====================================================================
    %%% Load optimization options
    %%%====================================================================

        % Type of experimental data:
        inputs.model.exe_type         = 'standard';
        inputs.exps.data_type         = 'real';                            % Type of data: 'pseudo'|'pseudo_pos'|'real'
        
        % Numerical methods for parameter estimation:
        inputs.ivpsol.ivpsolver       = 'cvodes';                                           % [] IVP solver: 'radau5'(default, fortran)|'rkf45'|'lsodes'|'lsodesst'|'lsoda'|'ode15s' (default, MATLAB, sbml)|'ode113'
        inputs.nlpsol.nlpsolver       = 'local_fminsearch';                                 % 'local_fmincon'|'local_n2fb'|'local_dn2fb'|'local_dhc'|
        %inputs.nlpsol.nlpsolver       = 'local_solnp';
        inputs.nlpsol.nlpsolver       = 'local_solnp';
        
        % Global optimization setup:
        % -----------------------------------------------------------------
        inputs.nlpsol.nlpsolver       = 'eSS';                                              % Perform estimation using Enhaced Scatter Search.
        inputs.nlpsol.eSS.maxeval     = 1e100;                                              % Maximum number of evaluations of the objective function,
        inputs.nlpsol.eSS.maxtime     = 1*60;                                               % Maximum time for optimisation, 
        inputs.nlpsol.eSS.local.solver='solnp';
        inputs.nlpsol.eSS.local.finish='solnp';
        inputs.nlpsol.eSS.ndiverse=50;
        inputs.model.exe_type         = 'standard';
        inputs.exps.data_type         = 'real';                                             % Type of data: 'pseudo'|'pseudo_pos'|'real'
    
    %======================================================================
    % SAVE MODEL
    %======================================================================
    resna='Disinfectant'
    e_DL=0.5;
    e_noDL=0.5;   

    % ---------- Build results paths ----------
    resna    = 'Disinfectant_er0p5';
    trial    = 1;
    
    % Base directory and subfolder
    baseDir     = pwd;
    results_dir = fullfile(baseDir,'Results/sec312_PE_inactivation/');
    if ~exist(results_dir,'dir'); mkdir(results_dir); end
    
    % Excel sheet
    bla2 = pwd; ind = find(bla2=='/'); resulname = [bla2(ind(end)+1:end)];
    runname = [resulname,'_Run',resna,num2str(trial), '_cpu', num2str(round(inputs.nlpsol.eSS.maxtime/60))];
    
    % Path prefix where files will actually be saved
    outprefix = fullfile(results_dir, runname);
    
    % Tell AMIGO to use the short folder name (it will put stuff under its own Results/)
    inputs.pathd.short_name     = 'test';
    inputs.plotd.plotlevel      = 'none';
    inputs.pathd.results_folder = runname;      % name only (no path)
    inputs.pathd.runident       = num2str(trial);
    sheetName = runname(1:min(30,end));       
    
    % =====================================================================
    % Load experimental data
    %======================================================================
    ods = 'Exp_data/Data_WithDisinfectant.xlsx';
    % Case with disinfectant:
    dat = build_dat_from_ods(ods, 'Exp_data_WithDisinfectant');
    inputs.exps.n_exp = size(dat.ts,2);

    %======================================================================
    % Catch previous optimization results (if flag_reopt = 0)
    %======================================================================
    flag_reopt=0;
    
    if trial==1
        prev_res=load('Pre_optims/Best_results_sec312_PE_inactivation.mat');
        opt=prev_res.res.fit.thetabest';
        flag_reopt=1;
        iii=(size(opt,2)-2)/54;
        alpha=opt(1);
        alphaL=opt(2);
        KX=opt(3:iii:end); % Kx
        K_COD=opt(4:iii:end); % Kcod
        K_XL =opt(5:iii:end); % Kxl
        opt=[];
        opt=[alpha alphaL];
        for ibla=1:inputs.exps.n_exp
            opt=[opt KX(ibla) K_COD(ibla) K_XL(ibla) 1e3];
        end
    else
        prev_res=load('temp.mat');
        opt=prev_res.res.fit.thetabest';
        flag_reopt=1;
    end

    clear prev_res
    close all

    
    %======================================================================
    % Model related data
    %======================================================================
    inputs.model.input_model_type = 'charmodelC';                                                           % Model introduction: 'charmodelC'|'c_model'|'charmodelM'|'matlabmodel'|'sbmlmodel'|
    inputs.model.n_st           = 3;                                                                        % Number of model states
    inputs.model.n_par          = 10;                                                                       % Number of model parameters
    inputs.model.n_stimulus     = 5;                                                                        % Number of inputs 
    inputs.model.st_names       = char('Xw','COD','XwL');                                                   % Names of the states
    inputs.model.par_names      = char('DD','K_X','K_COD','K_XL','Km','KmL','alpha','alphaL','nn','nL');    % Names of the parameters
    inputs.model.stimulus_names = char('FC','pH','TT','MM','VV');                                           % Names of the stimuli, inputs or controls
    inputs.model.eqns           = char('HOCl=FC/(1.0+(pow(10.0,-((3000.0/(TT+273.15)))+0.0253*(TT+273.15)-10.0686)/pow(10.0,-pH)))',...
                                       'dXw  =-DD*Xw  +(MM/VV)*K_X   -alpha*(Km^nn/(COD^nn+Km^nn))*Xw*HOCl',...
                                       'dXwL =-DD*XwL +(MM/VV)*K_XL  -alphaL*(Km^nn/(COD^nn+Km^nn))*XwL*HOCl',...
                                       'dCOD =-DD*COD +(MM/VV)*K_COD ');
    inputs.PEsol.id_global_theta = char('alpha','alphaL');
    
    % Number of global parameters
    ng = size(inputs.PEsol.id_global_theta,1);
    inputs.PEsol.global_theta_max=[15 15  ];
    inputs.PEsol.global_theta_min=[0 0  ];
    inputs.PEsol.global_theta_guess=opt(1:ng); 
    
    % Parameters initialization
    inputs.model.par            =   [ 0.0033749  100 100 100  1e4 1e4 0 0 1 1];
    
    
    % =====================================================================
    % Experimental scheme related data
    %======================================================================
  
    count_t=ng;
    for iexp = 1:inputs.exps.n_exp                                             % Loop in the number of experiments (different carvacrol concentrations)
        clear x1 x2
        % Define experimental times:
        %-----------------------------------------------------------------
        inputs.exps.t_f{iexp} = dat.ts{iexp}(end);                                % Experiments duration
        inputs.exps.n_s{iexp} = size(dat.ts{iexp},2);                             % Number of sampling times
        inputs.exps.t_s{iexp} = dat.ts{iexp};                                     % [] Sampling times, by default equidistant
        if iexp==19
            inputs.exps.t_f{iexp} =inputs.exps.t_f{iexp} +0.1;
        end

        % Define input:
        %-----------------------------------------------------------------
        % Stimuli definition                                                   
        inputs.exps.u_interp{iexp} = 'linear';                             % OPTIONS:u_interp: 'sustained' |'step'|'linear'(default)|'pulse-up'|'pulse-down'
        inputs.exps.n_linear{iexp} = size(dat.ts{iexp},2);
        inputs.exps.t_con{iexp}    = [dat.ts{iexp}];
        
        FM                         = dat.tau{iexp}*dat.Kgp{iexp}(end)/dat.ts{iexp}(end);
        inputs.exps.u{iexp}        = [dat.Dis{iexp};
            dat.pH{iexp};
            dat.T{iexp}
            FM*ones(size(dat.pH{iexp}))
            dat.V{iexp}];                                                  % Values of the inputs
        
        disp('zeros are 1cfus/100ml')
        %-----------------------------------------------------------------
        inputs.exps.exp_y0{iexp}   = [dat.Nw{iexp}(1) dat.COD{iexp}(1) dat.Nlis{iexp}(1)]; % Initial conditions for each experiment
        
        % Define experimental data:
        %-----------------------------------------------------------------
        inputs.exps.exp_data{iexp} = [log10(0.1*dat.Nw{iexp}+1)' dat.COD{iexp}' log10(0.1*dat.Nlis{iexp}+1)'];   % Experimental concentration in log10 scale
        
        % Define model observables (bacterial concentration, log10(CFUs/mL)):
        %-----------------------------------------------------------------
        inputs.exps.n_obs{iexp}     = 3;                                       % Number of observed quantities per experiment
        inputs.exps.obs_names{iexp} = char('log10CFUs','yCOD','log10Lis');                       % Name of the observable
        inputs.exps.obs{iexp}       = char('log10CFUs=log10(0.1*Xw+1)','yCOD=COD','log10Lis=log10(0.1*XwL+1)');                    % The observable is the bacterial concentration in a log10 scale
        
        inputs.PEsol.id_local_theta{iexp}=char('K_X','K_COD','K_XL','Km');                % [] 'all'|User selected| 'none' (default)
        inputs.PEsol.local_theta_max{iexp} = [1e11  1e5   1e7 1e3 ];                      % Maximum allowed values for the parameters
        inputs.PEsol.local_theta_min{iexp} = [0     0      0  1   ];
       
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
    
    %======================================================================
    % SAVE MODEL
    %======================================================================
    inputs.pathd.short_name = 'test';
    inputs.plotd.plotlevel  = 'none';
       
    % Run Parameter estimation (PE) and PostAnalysis:
    %----------------------------------------------------------------------
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
    res = AMIGO_PE(inputs);                                                % Matlab structure with the calibration results
    
    %% ====================================================================
    % Run postprocess (figures and tables)
    % =====================================================================
        save temp
        ff='Results_finally_selected_for_D5_afterRev1';
        def=0;

        %% ================================================================
        % Common parameters
        %%% ===============================================================
        
        % localpar={'D','K_{COD}','K_X','K_m'};
        nl=size(inputs.PEsol.id_local_theta{1},1);
        opt=res.fit.thetabest';   
        for iexp=1:inputs.exps.n_exp
            temp(iexp,1)=max(inputs.exps.exp_data{iexp}(:,1));
            temp(iexp,2)=max(inputs.exps.exp_data{iexp}(:,2));
        end
        max_Nw=max(temp(:,1));
        max_COD=max(temp(:,2));%max(max(cell2mat(dat.COD)));
        
        %% ====================================================================
        % run optim to get confidence intervals alwasy same conditions
        %%=====================================================================
        inputs.nlpsol.nlpsolver  = 'local_solnp';
        inputs.ivpsol.senssolver ='fdsens5'%'cvodes'
        
        % optimumn
        count_t=ng;
        for iexp = 1:inputs.exps.n_exp
            inputs.PEsol.local_theta_guess{iexp}=opt(count_t+[1:nl]);
            count_t=count_t+nl;
        end
        inputs.PEsol.global_theta_guess = opt(1:ng);
        inputs.nlpsol.eSS.log_var=[1:size(opt,2)];
        
        AMIGO_Prep(inputs)          % Preparation of AMIGO toolbox
        res = AMIGO_PE(inputs);     % Matlab structure with the calibration results
        
        %% ================================================================
        % build table
        %%=================================================================
        bad_exp=[];
        verybad_exp=[];
        cc=0;
        for ig=1:ng
            col1{ig}='Global to all edexperiments';
            col2{ig}=inputs.PEsol.id_global_theta(ig,:);
        end
        
        for iexp=1:inputs.exps.n_exp
            for il=1:nl
                col1{il+ng+cc}=[dat.info{iexp}];
                col2{il+ng+cc}=[inputs.PEsol.id_local_theta{1}(il,:)];
            end
            cc=cc+nl;
        end
        
        for iexp=1:inputs.exps.n_exp
            ind=([1:nl]+ng)+(iexp-1)*nl;
            for ii_c=ind;col_last{ii_c}='Confident result';end
            if sum(res.fit.rel_conf_interval(ind)>100)>0
                bad_exp=[bad_exp iexp];
                for ii_c=ind;
                    if res.fit.rel_conf_interval(ii_c)>100;col_last{ii_c}='* More than 100% confidence region';end
                end
                disp(['*',dat.info{iexp}])
            end
            
            if  sum(res.fit.rel_conf_interval(ind)==0)>0.5 ||  sum(abs(imag(res.fit.rel_conf_interval(ind)))>0)>0.5
                verybad_exp=[verybad_exp iexp];
                for ii_c=ind;col_last{ii_c}='** No able to estimate confidence region';end
                disp(['**',dat.info{iexp}])
            end
        end
        bad_exp=[bad_exp 1e10];
        verybad_exp=[verybad_exp 1e10];
        
        T=table(col1',col2',res.fit.thetabest,res.fit.conf_interval',res.fit.rel_conf_interval',col_last','VariableNames',{'Experiment','Parameter','Value','Confidence_interval','Relative_confidence_interval','Notes'})
        writetable(T, [outprefix,'.xlsx'], 'Sheet', sheetName);
        
        
        %% ================================================================
        % Split into two figure groups:
        %  (A) Xw + XwLis together
        %  (B) COD alone
        %% ================================================================
        cols = 9;
        rows = ceil(inputs.exps.n_exp/cols);
        
        %% --------------------------- FIGURE A: Xw + XwLis ------------------------
        fig_xw = figure;
        set(fig_xw,'Name','Xw & XwLis','NumberTitle','off');
        set(fig_xw,'OuterPosition',[-1 35 2564 1406]);
        
        ax_first_A = [];    % will store the first axes handle
        hA = [];            % will store the four line handles for the legend
        
        for iexp = 1:inputs.exps.n_exp
            ax = subplot(rows,cols,iexp);
            if iexp == 1, ax_first_A = ax; end
        
            % Xw (Total Counts) data + sim
            hXwData = plot(dat.ts{iexp}/60, inputs.exps.exp_data{iexp}(:,1), 's', ...
                'Color','k','MarkerFaceColor','k'); hold on
            hXwSim  = plot(res.sim.tsim{iexp}/60, res.sim.obs{iexp}(:,1), '-', ...
                'LineWidth', 2,'color','k');
        
            % XwLis (Listeria spp.) data + sim
            hLisData = plot(dat.ts{iexp}/60, inputs.exps.exp_data{iexp}(:,3), 's', ...
                            'color','b','MarkerFaceColor','b'); hold on
            hLisSim  = plot(res.sim.tsim{iexp}/60, res.sim.obs{iexp}(:,3), '-', ...
                'LineWidth',2,'color','b');
        
            % Save the first subplot’s handles to build a single legend later
            if iexp == 1
                hA = [hXwData, hXwSim, hLisData, hLisSim];
            end
        
            % Y labels (preserve your conditional indices)
            if iexp == 10
                ylabel('Bacteria (Log$_{10}$(CFU)/100mL)', ...
                       'FontSize',16,'interpreter','latex');
            end
            if iexp == 50
                xlabel('Time (h)','FontSize',16,'interpreter','latex');
            end
        
            title(ax, dat.info{iexp}, 'Interpreter','latex'); 
            set(gca,'FontSize',16)
        end
        
        % with scaling (Total Counts)
        for iexp = 1:inputs.exps.n_exp
            subplot(rows,cols,iexp);
            ylim([0 max_Nw*1.05]) % same scale you used for yyaxis left
            yticks(0:2.5:10)
        end
        
        % ---legend ---
        legAxA = axes(fig_xw,'Position',[0 0 1 1],'Visible','off');  % dummy axes
        
        % Bring all real subplots above the dummy legend axes
        axsA = findall(fig_xw,'Type','axes');
        axsA(axsA==legAxA) = [];               % drop the dummy axes
        
        %for k = 1:numel(axsA), uistack(axsA(k),'top'); end
        
        drawnow
        
        try
            hgsave([outprefix,'_Xw_XwLis_', num2str(round(res.fit.fbest))])
        catch
            hgsave([outprefix,'_Xw_XwLis'])
        end

        %% -------------------------------- FIGURE B: COD --------------------------
        fig_cod = figure;
        set(fig_cod,'Name','COD','NumberTitle','off');
        set(fig_cod,'OuterPosition',[-1 35 2564 1406]);
        
        ax_first_B = [];
        hB = [];
        
        for iexp = 1:inputs.exps.n_exp
            ax = subplot(rows,cols,iexp);
            if iexp == 1, ax_first_B = ax; end
        
            % COD data + sim
            hCODData = plot(dat.ts{iexp}/60, inputs.exps.exp_data{iexp}(:,2), 's', ...
                            'color','k','MarkerFaceColor','k'); hold on
            hCODSim  = plot(res.sim.tsim{iexp}/60, res.sim.states{iexp}(:,2),'-', ...
                'LineWidth',2,'Color','k');
        
            if iexp == 1
                hB = [hCODData, hCODSim];
            end
        
            if iexp == 10
                ylabel('Chemical Oxygen Demand, COD, (ppm)', ...
                       'FontSize',16,'interpreter','latex');
            end
            if iexp == 50
                xlabel('Time (h)','FontSize',16,'interpreter','latex');
            end
        
            title(ax, dat.info{iexp}, 'Interpreter','latex');
            set(gca,'FontSize',16)
            
        end
        
        % with scaling (COD)
        for iexp = 1:inputs.exps.n_exp
            subplot(rows,cols,iexp);
            ylim([0 max_COD*1.15])
            yticks(0:2000:6000)
        end
        
        % ---legend---
        legAxB = axes(fig_cod,'Position',[0 0 1 1],'Visible','off');
        drawnow

        try
            hgsave([outprefix,'_COD_', num2str(round(res.fit.fbest))])
        catch
            hgsave([outprefix,'_COD_'])
        end

        clear newpar pg pl
        pg=res.fit.thetabest(1);
        pl{1}=log10(res.fit.thetabest(ng+1:2:end));
        pl{2}=log10(res.fit.thetabest(ng+2:2:end));
        save(outprefix)                                  % saves run results as .../results_inactivation/<runname>.mat
        save(fullfile(results_dir,'temp.mat'))           % temp also into the subfolder

    

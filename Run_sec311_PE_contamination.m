%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Main file to run parameter estimation with AMIGO for the model in:
% 2025 - Moreno et al   - Virtual Representation of Fresh Produce Washing 
%                         in 4.0 Industry: Modelling and calibration 
%                         through optimal experimental design
%
% Contamination cases (no disinfectant)
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
        clear inputs x1 x2    
        trial=1;

    %% ========================================================================
    %%% Load options common to all model optimisations
    %%%========================================================================

    % Save AMIGO results in:
    inputs.pathd.results_folder   = ['sec311_PE_contamination'];  % Name of the folder to keep results (in Results from AMIGO) for a given problem
    inputs.pathd.runident=  [num2str(trial)];

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
    inputs.nlpsol.eSS.maxeval     = 1e100;                                     % Maximum number of evaluations of the objective function,
    inputs.nlpsol.eSS.maxtime     =1*60;  %prev                                % Maximum time for optimisation,
    
    inputs.nlpsol.eSS.local.solver='solnp';
    inputs.nlpsol.eSS.local.n2=10;
    inputs.nlpsol.eSS.local.n1=30;
    
    %% ========================================================================
    %%% Fit mechanistic model to CFUS/mL data
    %%%========================================================================
    

    Run_input_data
    close all
    
    %======================================================================
    % SAVE MODEL
    %======================================================================
    resna='Best_results_sec311_PE_contamination'   
    
    % ---------- Build results paths ----------
    resna    = 'without_disinfectant';
    trial    = 1;
    
    % Base directory and subfolder
    baseDir     = pwd;
    results_dir = fullfile(baseDir,'Results/sec311_PE_contamination');
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
    
    % Run Parameter estimation (PE) and PostAnalysis:
    %-----------------------------------------------------------------
    AMIGO_Prep(inputs)          % Preparation of AMIGO toolbox
    res = AMIGO_PE(inputs);     % Matlab structure with the calibration results
    
    
    %% ====================================================================
    %%% Run postprocess (figures and tables)
    %%%====================================================================
    save temp
    def=1;
    
    %% ====================================================================
    % Common parameters
    %%% ===================================================================
    
    fs=10;
    % localpar={'D','K_{COD}','K_X','K_m'};
    nl=size(inputs.PEsol.id_local_theta{1},1);
    opt=res.fit.thetabest';
    for iexp=1:inputs.exps.n_exp
        temp(iexp,1)=max(inputs.exps.exp_data{iexp}(:,1));
        temp(iexp,2)=max(inputs.exps.exp_data{iexp}(:,2));
    end
    max_Nw=max(temp(:,1));
    max_COD=max(temp(:,2));%max(max(cell2mat(dat.COD)));
    %%
    
    %% ====================================================================
    % run optim to get confidence intervals alwasy same conditions
    %%=====================================================================
    inputs.nlpsol.nlpsolver       = 'local_solnp';
    inputs.ivpsol.senssolver      ='fdsens5'%'cvodes'
    
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
    
    %% ====================================================================
    % build table
    %%=====================================================================
    bad_exp=[];
    verybad_exp=[];
    cc=0;
    for ig=1:ng
        col1{ig}='Global to all experiments';
        col2{ig}=inputs.PEsol.id_global_theta(ig,:);
    end
    
    for iexp=1:inputs.exps.n_exp
        for il=1:nl
            col1{il+ng+cc}=[dat.info{iexp}];
            col2{il+ng+cc}=[inputs.PEsol.id_local_theta{1}(il,:)];
            %             colprod{il+ng+cc}=dat.infoProd{iexp};
            %             colproc{il+ng+cc}=dat.infoProc{iexp}
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
    if size(inputs.pathd.results_folder,2)>30
        writetable(T,[outprefix,'.xlsx'],'Sheet',inputs.pathd.results_folder(1:30))
    else
    writetable(T,[outprefix,'.xlsx'],'Sheet',inputs.pathd.results_folder)
    end

    %% ================================================================
    % Split into two figure groups: (1) Total Counts, (2) COD
    %% ================================================================
    cols = 4;
    rows = ceil(inputs.exps.n_exp/cols);
    
    %% --------------------------- FIGURE A: TOTAL COUNTS ----------------------
    fig_counts = figure;
    set(fig_counts,'Name','Total Counts','NumberTitle','off');
    set(fig_counts,'OuterPosition',[998 91 1347 1320]);
    
    hA = [];  % legend handles
    
    for iexp = 1:inputs.exps.n_exp
    
        subplot(rows,cols,iexp);
    
        % Total Counts only
        hData = plot(dat.ts{iexp}/60, inputs.exps.exp_data{iexp}(:,1), 's', ...
            'Color','k','MarkerFaceColor','k'); hold on
        hSim  = plot(res.sim.tsim{iexp}/60, res.sim.obs{iexp}(:,1), '-', ...
            'LineWidth', 2,'color','k');
    
        % Save handles for legend from the first subplot
        if iexp == 1
            hA = [hData, hSim];
        end
    
        % Labels at selected indices, as in your original code
        if iexp == 13
            ylabel('Total Counts (log$_{10}$ CFU/100mL)','FontSize',16,'FontWeight','bold','interpreter','latex');
        end
    
        if iexp == 26
           xlabel('Time (h)','FontSize',16,'interpreter','latex');
        end
    
        title(dat.info{iexp}, 'Interpreter','latex');
        set(gca,'FontSize',16)
    end
    
    drawnow
    
    % with scaling (Total Counts)
    for iexp = 1:inputs.exps.n_exp
        subplot(rows,cols,iexp);
        ylim([0 max_Nw*1.05]) % same scale you used for yyaxis left
        yticks(0:5:10)
    end
    
    % --- Legend for FIGURE A (dummy axes so subplots don't shrink) ---
    legAxA = axes(fig_counts,'Position',[0 0 1 1], ...
        'Visible','off','HitTest','off','PickableParts','none','Color','none');
    
    axsA = findall(fig_counts,'Type','axes');
    axsA(axsA==legAxA) = [];
    
    for k = 1:numel(axsA), uistack(axsA(k),'top'); end
    
    drawnow
    
    try
        hgsave([outprefix,'_TotalCounts_',num2str(round(res.fit.fbest))])
    catch
        hgsave([outprefix,'_TotalCounts'])
    end
    
    %% ------------------------------- FIGURE B: COD ---------------------------
    fig_cod = figure;
    set(fig_cod,'Name','COD','NumberTitle','off');
    set(fig_cod,'OuterPosition',[998 91 1347 1320]);
    
    hB = [];  % legend handles
    
    for iexp = 1:inputs.exps.n_exp
        subplot(rows,cols,iexp);
    
        % COD only
        hCODData = plot(dat.ts{iexp}/60, inputs.exps.exp_data{iexp}(:,2), 's', ...
            'Color','k', 'MarkerFaceColor','k'); hold on
        hCODSim  = plot(res.sim.tsim{iexp}/60, res.sim.states{iexp}(:,2), '-', ...
            'LineWidth',2,'Color','k');
    
        % Save handles for legend from the first subplot
        if iexp == 1
            hB = [hCODData, hCODSim];
        end
    
        if iexp == 13
            ylabel('Chemical Oxygen Demand, COD, (ppm)', ...
                   'FontSize',16,'interpreter','latex');
        end
        if iexp == 26
             xlabel('Time (h)','FontSize',16,'interpreter','latex');
        end
    
        title(dat.info{iexp}, 'Interpreter','latex');
        set(gca,'FontSize',16)
    end
    
    drawnow
    %hgsave([inputs.pathd.results_folder,'_COD_noscaling'])
    
    % with scaling (COD)
    for iexp = 1:inputs.exps.n_exp
        subplot(rows,cols,iexp);
        ylim([0 max_COD*1.05])
        yticks(0:2500:5000)
    end
    
    % --- Legend for FIGURE B (dummy axes so subplots don't shrink) ---
    legAxB = axes(fig_cod,'Position',[0 0 1 1], ...
        'Visible','off','HitTest','off','PickableParts','none','Color','none');
    
    axsB = findall(fig_cod,'Type','axes');
    axsB(axsB==legAxB) = [];
    
    for k = 1:numel(axsB), uistack(axsB(k),'top'); end
    
    drawnow
    
    try
        hgsave([outprefix,'_COD_',num2str(round(res.fit.fbest))])
    catch
        hgsave([outprefix,'_COD'])
    end

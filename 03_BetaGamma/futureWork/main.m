clear all
close all
disp('There is saturation, therefore reversive reaction including combined chlorine for future')
return

%% Model
%========================================================================================
inputs.model.input_model_type='charmodelC';                             
inputs.model.st_names 	=char('FC','COD','CombinedCl');     
inputs.model.par_names=char('beta','gamma','lambda');                           
inputs.model.stimulus_names=char('');     
inputs.model.eqns=...
    char('dFC=-beta*FC*COD-lambda*FC',...
         'dCOD=-beta*gamma*FC*COD',...
         'dCombinedCl=);
     
inputs.model.par=[1 1 1.7e-3]; 

%USUALS
inputs.model.n_st       =size(inputs.model.st_names,1);                            
inputs.model.n_par      =size(inputs.model.par_names,1);                          
inputs.model.n_stimulus =size(inputs.model.stimulus_names,1);      

%% Exps
%========================================================================================
inputs.exps.n_exp=1;  

% exp 1;
iexp    = 1;
preprocess
% FC{iexp}= FC_mean;
% COD{iexp}= COD_mean;
% tt{iexp} = ttexp;


%USUALS
for iexp=1:inputs.exps.n_exp
    inputs.exps.exp_y0{iexp}    = [FC_mean(1) COD_mean(1)]; 
    inputs.exps.t_s{iexp}       = tt;
    inputs.exps.t_f{iexp}=inputs.exps.t_s{iexp}(end);
    inputs.exps.n_obs{iexp}      = inputs.model.n_st;
    inputs.exps.obs_names{iexp} = char('yFC','yCOD');                       % Name of the observable
    inputs.exps.obs{iexp}       = char('yFC=FC','yCOD=COD');   
    inputs.exps.exp_data{iexp}=[FC_mean' COD_mean'];
    inputs.exps.error_data{iexp}=[FC_std' COD_std'];
end


%% 


inputs.PEsol.id_global_theta=char('beta','gamma');
inputs.PEsol.global_theta_max=[100 0];%30*ones(size(inputs.model.par));       % Maximum allowed values for the paramters
inputs.PEsol.global_theta_min=[0 0];%0*ones(size(inputs.model.par));       % Minimum allowed values for the parameters
inputs.PEsol.global_theta_guess=[7.81*10^(-4)   8.16  ];
inputs.nlpsol.eSS.log_var = [1:2];

% inputs.PEsol.global_theta_max=0.1;
% inputs.PEsol.global_theta_min=0;
% inputs.PEsol.global_theta_max(2)=100;
% inputs.PEsol.global_theta_min(2)=0;

inputs.nlpsol.nlpsolver='eSS';%'de';                                         % 'local_fmincon'|'local_n2fb'|'local_dn2fb'|'local_dhc'|
%inputs.nlpsol.nlpsolver='local_fminsearch';                                % uncomment this if only local optimization is needed (faster but could be trapped in a local minimumn)
inputs.nlpsol.eSS.maxeval = 10000000;                                       % dummy variable here to avoid stoping optimization for number of evaluations
inputs.nlpsol.eSS.maxtime = 20;                                           % Time used for the optimization (in minutes). More or least the time needed to run the code (if not multithreed)
% Plotting saving...
inputs.plotd.plotlevel='min';                                               % [] Display of figures: 'full'|'medium'(default)|'min' |'noplot'
inputs.PEsol.PEcost_type='lsq';                                             % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
inputs.PEsol.lsq_type='Q_expmax';    

%% Compute Results
%========================================================================================
AMIGO_Prep(inputs)
%res.SModel=AMIGO_SModel(inputs)
res.SData=AMIGO_SData(inputs)
res.PE=AMIGO_PE(inputs)
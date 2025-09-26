clear all
close all

%% exp data and known parameters
%========================================================================================
Frl     = 10.0;             % g/min. Input flow of red lettuce (from paper)
Fil     = 500.0;            % g/min. Input flow of iceberg lettuce (from paper)

V        = 20.0;          % L (from paper)
%Fw       = 0.0;          % L/min No water replenishment
Dwell_t  = 0.5;           % min (from paper). Dwell time
Mil      = Fil*Dwell_t/1000;   % kg of ice lettuce (from paper)
Mrl      = Frl*Dwell_t/1000;   % kg of red lettuce (from paper)
MW_FC    = 52.45;         % mol/g (molecular weight of FC)
MW_O2    = 32;            % mol/g (molecular weight of O2)
lambda   = 1.7e-3;        % 1/min (from paper)
Conv_FC  = MW_FC/1.0e3;   % Conversion (free chloride) from micromolar to mg/L
Conv_COD = MW_O2/1.0e3;   % Conversion (COD) from micromolar to mg/L
% Sampling times [min]
expData.ts = [0.0, 2.0, 4.0, 6.0, 8.0, 10.0, 12.5, 15.0, 17.0, 19.0, 21.0, 23.0, 25.0, 27.5, 30.0, 32.0, 34.0, 36.0, 38.0, 40.0];
% Free chloride [mg/L]. Originally micromolar. 
expData.FC  = Conv_FC*[230.0, 192.0, 128.0, 70.0, 30.0, 8.0, 266.0, 174.0, 82.0, 36.0, 12.0, 4.0, 2.0, 188.0, 98.0, 28.0, 10.0, 4.0, 0.0, 0.0];
expData.DFC = max(expData.FC); %max(expData.FC)-min(expData.FC);
% COD [mg/L]. Originally micromolar. 
expData.COD  = Conv_COD*[1025.6, 2948.7, 5000.0, 6923.1, 9102.6, 10897.4, 10000.0, 10897.4, 12692.3, 13974.3, 16153.8, 17820.5, 19487.2, 17051.3, 17692.3, 19359.0, 20769.2, 22051.3, 23461.5, 24743.6];
expData.DCOD = max(expData.COD);%max(expData.COD)-min(expData.COD);
% Bacteria in water [log MNU/ml]. In the paper MPN/ml
expData.Xw = [-0.2, -0.2, -0.2, -0.2, 0.16, 0.76, -0.2, -0.2, -0.2, -0.2, 0.33, 1.0, 1.5, -0.2, -0.2, -0.14, 0.63, 1.3, 1.8, 2.1];
expData.DXw = max(expData.Xw);%max(expData.Xw)-min(expData.Xw);
% Bacteria iceberg lettuce [log MNU/g]. In the paper MPN/g
expData.Xil  = [-1.0, -1.0, -1.0, -1.0, -0.89, -0.04, -1.0, -1.0, -1.0, -1.0, -1.0, -0.12, 0.6, -1.0, -1.0, -1.0, -0.59, 0.25, 0.97, 1.4];
expData.DXil = max(expData.Xil);%max(expData.Xil)-min(expData.Xil);

%% Model
%========================================================================================
inputs.model.input_model_type='charmodelC';                             
inputs.model.st_names 	=char('FC','COD');     
inputs.model.par_names=char('DD','pLambda','pbeta','pgamm','pINJ','pKcod','pMil','pMrl','pV');                           
inputs.model.stimulus_names=char('U1','U2','U3');     
inputs.model.eqns=...
    char('dFC  = -DD*FC - pLambda*FC - pbeta*COD*FC + U1*pINJ/pV',...
         'dCOD = -DD*COD + (U2*pMil/pV+ U3*pMrl/pV)*pKcod ');
     
     
     
     
Fw  = 0.51;
DD  = Fw/V;
beta= 7.81e-4;
gamm= 8.16;
INJ = 430;%===>7.8373e+03 
Kcod=4.94;

inputs.model.par=[DD,lambda,beta,gamm,INJ,Kcod,Mil,Mrl,V];
%USUALS
inputs.model.n_st       =size(inputs.model.st_names,1);                            
inputs.model.n_par      =size(inputs.model.par_names,1);                          
inputs.model.n_stimulus =size(inputs.model.stimulus_names,1); 



%% Exps
%========================================================================================
inputs.exps.n_exp=1;  
% exp 1;
iexp    = 1;

%USUALS
for iexp=1:inputs.exps.n_exp
    inputs.exps.exp_y0{iexp}    = [expData.FC(1) expData.COD(1)]; 
    inputs.exps.t_s{iexp}       = expData.ts;
    inputs.exps.t_f{iexp}=inputs.exps.t_s{iexp}(end);
    inputs.exps.n_obs{iexp}      = inputs.model.n_st;
    inputs.exps.obs_names{iexp} = char('yFC','yCOD');                       % Name of the observable
    inputs.exps.obs{iexp}       = char('yFC=FC','yCOD=COD');   
    inputs.exps.exp_data{iexp}=[expData.FC' expData.COD'];
%     inputs.exps.error_data{iexp}=[FC_std' COD_std'];

    %%% controls
    dFC=5.0/60;
    dL = 5;
    ddL = 10;
    tcon=[  0   10  10+dFC  10+dL   25    25+dFC  25+dL   25+dL+ddL expData.ts(end) ];
    U1=[    0   1   0       0       1         0     0       0      ];
    U2=[    1   0   0       1       0         0     1       0      	];
    U3=[    1   0   0       1       0         0     1       0       ];
    nsteps=length(tcon)-1;
    inputs.exps.u_interp{iexp} = 'step';                                                           
    inputs.exps.n_steps{iexp}=nsteps;
    
    inputs.exps.t_con{iexp}=[tcon];
    inputs.exps.u{iexp}= [U1;U2;U3];
end


%% Waht to optimise
%========================================================================================

inputs.PEsol.id_global_theta=char('DD','pbeta','pINJ','pKcod');
inputs.PEsol.global_theta_max=[1 1 10000000  100000];%30*ones(size(inputs.model.par));       % Maximum allowed values for the paramters
inputs.PEsol.global_theta_min=[0 0 0  0 ];%0*ones(size(inputs.model.par));       % Minimum allowed values for the parameters
inputs.PEsol.global_theta_guess=[Fw beta INJ Kcod ];
inputs.nlpsol.eSS.log_var = [1:4];

% inputs.PEsol.id_global_theta=char('pINJ');
% inputs.PEsol.global_theta_max=[10000000 ];%30*ones(size(inputs.model.par));       % Maximum allowed values for the paramters
% inputs.PEsol.global_theta_min=[0   ];%0*ones(size(inputs.model.par));       % Minimum allowed values for the parameters
% inputs.PEsol.global_theta_guess=[INJ ];
% inputs.nlpsol.eSS.log_var = [1];


inputs.nlpsol.nlpsolver='eSS';%'de';                                         % 'local_fmincon'|'local_n2fb'|'local_dn2fb'|'local_dhc'|
%inputs.nlpsol.nlpsolver='local_fminsearch';                                % uncomment this if only local optimization is needed (faster but could be trapped in a local minimumn)
inputs.nlpsol.eSS.maxeval = 10000000;                                       % dummy variable here to avoid stoping optimization for number of evaluations
inputs.nlpsol.eSS.maxtime = 60;                                           % Time used for the optimization (in minutes). More or least the time needed to run the code (if not multithreed)
% Plotting saving...
inputs.plotd.plotlevel='full';                                               % [] Display of figures: 'full'|'medium'(default)|'min' |'noplot'


inputs.PEsol.PEcost_type='llk';                                             % 'lsq' (weighted least squares default) | 'llk' (log likelihood) | 'user_PEcost'
inputs.exps.error_data{iexp}=[0.1*ones(size(expData.FC')) 10*ones(size(expData.COD'))];
 % inputs.ivpsol.rtol=1.0D-6;                            % [] IVP solver integration tolerances
 % inputs.ivpsol.atol=1.0D-6; 
 
%% Compute Results
%========================================================================================
AMIGO_Prep(inputs)
%res.SModel=AMIGO_SModel(inputs)

% res.SData=AMIGO_SData(inputs)
% pause
res.PE=AMIGO_PE(inputs)
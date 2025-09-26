% Main file to estimate the parameters in the first scenario
% described in:
% Abnavi, M. D., Kothapalli C.R., Munther, D., Srinivasan, P. (2021). 
% "Chlorine inactivation of Escherichia coli O157:H7 in fresh produce wash process: Effectiveness and modeling." 
% International Journal of Food Microbiology 356:109364.
% A mex file is used to accelerate the calculations
%
% In this version, the complete model (taking into account the different
% produces) is considered
% Besides the typical parameters to be estimated, in this version, FCinj
% and Fw are also estimated
clear variables
clc
warning off
% Injection of Free Chloride
known_par.dtinj  = 5.0/60.0;    % min - time to inject FC
%FCinj  = 0.49/known_par.dtinj; % g/min - to be added during 1 second
tFCinj = [10.0, 25.0];   % min. Time at which the FC is added

% Addition of iceberg and red lettuce. They are added five minutes
% after the FC is injected
Frl     = 10.0;             % g/min. Input flow of red lettuce (from paper)
Fil     = 500.0;            % g/min. Input flow of iceberg lettuce (from paper)
tFpin_s = [0.0 tFCinj+5.0]; % min. Time at which the lettuce is added
tFpin_e = tFpin_s+10.0;     % min. Time at which the lettuce addition stops

% Known parameters 
V        = 20.0;          % L (from paper)
%Fw       = 0.0;          % L/min No water replenishment
Dwell_t  = 0.5;           % min (from paper). Dwell time
Mil      = Fil*Dwell_t;   % g of ice lettuce (from paper)
Mrl      = Frl*Dwell_t;   % g of red lettuce (from paper)
MW_FC    = 52.45;         % mol/g (molecular weight of FC)
MW_O2    = 32;            % mol/g (molecular weight of O2)
lambda   = 1.7e-3;        % 1/min (from paper)
Conv_FC  = MW_FC/1.0e3;   % Conversion (free chloride) from micromolar to mg/L
Conv_COD = MW_O2/1.0e3;   % Conversion (COD) from micromolar to mg/L
FC_in    = 0.0;           % mg-FC/L (Concentration of FC entering the system with the input flow of water)
COD_in   = 0.0;           % mg-COD/L (Concentration of COD entering the system with the input flow of water)
Xw_in  = 0.0;             % MPN/mL (Concentration of bacteria entering the system with the input flow of water)
Xil_in = 0.0;             % MPN/g-il (Concentration of bacteria entering the system with the iceberg lettuce)
Xrl_in = 10^5.0;          % MPN/g-rl (Concentration of bacteria entering the system with the red lettuce)
% Introduce known parameters into a structure
known_par.V      = V;
known_par.Mil    = Mil;
known_par.Mrl    = Mrl;
known_par.lambda = lambda;
%known_par.Fw     = Fw;
known_par.Fil    = Fil;
known_par.Frl    = Frl;
known_par.FC_in  = FC_in;
known_par.COD_in = COD_in;
known_par.Xw_in  = Xw_in;
known_par.Xil_in = Xil_in;
known_par.Xrl_in = Xrl_in;

%========== Experimental data =======================
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

%========================= PROBLEM SPECIFICATIONS ===========================
% Parameters to be estimated are
% Kfc - [L·min/mg-COD] Reaction rate constant for the reaction of FC and
%       organic matter in the equation of FC 
% COD_in - [mg-COD/L] Concentration of COD entering the system
% Kco - [L/(min·mg-FC)] Reaction rate constant for the reaction of FC and
%       organic matter in the equation of COD
% alpha_m - [mg-COD/(mg-FC·min)] Parameter in the Michaelis-Menten like
%           equation
% Kilw - [1/min] Constant of the binding rate (from water to iceberg
%       lettuce)
% Kwil - [1/min] Constant of the unbinding rate (from iceberg lettuce to
%       water)
% Krlw - [1/min] Constant of the binding rate (from water to red
%       lettuce)
% Kwrl - [1/min] Constant of the unbinding rate (from red lettuce to
%       water)
% Kilo - [mg-COD/(g-iceberg lettuc·min)] Rate at which COD is transferred from the
%        iceberg lettuce to the water. It includes the concentration of COD
%        in the produce (Kilo = Kil*CODil). If it is not included a new
%        equation for COD in the produce should be added 
% Krlo - [mg-COD/(g-red lettuce·min)] Rate at which COD is transferred from
%        the red lettuce to the water. It includes the concentration of COD
%        in the produce (Krlo = Krl*CODrl). If it is not included a new
%        equation for COD in the produce should be added 
problem.f   = 'costWrapper_FCinj_Fw_matlab';             

% Bounds and initial guess
%              alpha_m, Kfc,    Kco,    Kilw,   Kwil    Kilo,    FCinj,  Fw,     Km,     nCOD    vA2  
problem.x_U = [1.0e+5,  1.0e-1, 1.0e-1, 1.5e+4, 1.5e+4, 2.0e+1,  3.0e+4, 5.0e+0, 4.0e+3, 9.0e+0, 1.0];
problem.x_L = [1.0e+0,  1.0e-8, 1.0e-8, 1.0e+2, 1.0e+2, 0.0e+0,  5.0e+2, 0.0e+0, 1.0e+1, 1.0e+0, 0.0];

best=[	74783.1
	0.000890666
	0.006923
	2631.44
	4895.63
	4.8224
	9470
	0.464622
	3307.52
	2.67595
	0.663728]';
% If you have an previous solution, it can be used as initial guess
%load('PEresults_FCinj_Fw.mat','Results')
%problem.x_0 = Results.xbest;
clear Results

% Other specifications
opts.maxtime      = 1;
opts.maxeval      = 1.0e5;
opts.strategy     = 1;
%opts.log_var      = [4, 6];
opts.local.solver = 'fminsearch';%'wdn2fb';  %'wdn2fb';  %'fsqp';
opts.local.finish = [];%'fmincon';  %'fsqp';
%========================= END OF PROBLEM SPECIFICATIONS =====================

% Call the NLP solver
current_path = pwd;
%cd '/home/carlos/varios/matlabcentral/SSm_R2010A/MATLAB75_and_later'
%cd '/home/carlosvf/matlabcentral/SSm_R2010A/MATLAB75_and_later'
ssm_startup
eval(sprintf('cd %s',current_path))

% Call the optimization function
[Results]  = ess_kernel(problem, opts, known_par, expData,...
             tFCinj, tFpin_s, tFpin_e,'pe');
         
% Remove matfile created by ess
delete ess_report.mat
         
% Save the results
save('PEresults_FCinj_Fw.mat','Results','problem','opts');

% Test the results
% Call the function that computes the cost with the optimal
% values of the parameters
J = costWrapper_FCinj_Fw_matlab(Results.xbest, known_par, expData, tFCinj, tFpin_s, tFpin_e, 'draw');

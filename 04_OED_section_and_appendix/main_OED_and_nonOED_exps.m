%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE: Optimal Experimental Design (OED) for Washing Process
% AUTHORS: Moreno-Razoa, Martínez-López, Vilas, Tudela, Gil, García
% DESCRIPTION: Runs OED and non-OED simulations, parameter estimation,
%              and confidence interval analysis using the AMIGO toolbox.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 1. Control flag
frun = 0;  % Set to 1 to re-run OED optimization; 0 to load existing results

%% 2. Define folders for saving results
inputs.pathd.results_folder = 'OED';         % Folder to store results
inputs.pathd.short_name = '2_pulses';        % Identifier for figures and reports

%% 3. MODEL DEFINITION
inputs.model.input_model_type = 'charmodelC'; % Model type
inputs.model.n_st = 3;                        % Number of states
inputs.model.n_par = 17;                      % Number of parameters
inputs.model.n_stimulus = 2;                  % Number of stimuli (inputs)

% State, parameter, and stimulus names
inputs.model.st_names = char('XX','COD','FC');
inputs.model.par_names = char('MM','VV','lamb','Kcod','Kx','alpha','km','beta','gamm','pH','TT','e_Kcod','e_Kx','e_alpha','e_km','e_beta','e_gamm');
inputs.model.stimulus_names = char('Fin','DD');

% Model equations
inputs.model.eqns = char(...
    'HOCl=FC/(1.0+(pow(10.0,-((3000.0/(TT+273.15)))+0.0253*(TT+273.15)-10.0686)/pow(10.0,-pH)))',...
    'dXX    = DD*(0-XX) + (MM/VV)*Kx*e_Kx - alpha*e_alpha*(km*e_km/(km*e_km+COD))*HOCl*XX',...
    'dCOD   = DD*(0-COD) + (MM/VV)*Kcod*e_Kcod - gamm*e_gamm*beta*e_beta*COD*FC',...
    'dFC    = DD*(0-FC) + 1000*Fin/VV - beta*e_beta*COD*FC - lamb*FC');

%% 4. Parameter values
MM = 10; VV = 10000; lamb = 1.7e-3; DD = 3.375e-3;
Kcod = 10^1.9; Kx = 10^7.5; alpha = 7.66; km = 1391.8;
beta = 7.22e-4; gamm = 2.76; pH = 7.5; TT = 15;

% Scaling factors
e_Kcod = 100; e_Kx = 1e7; e_alpha = 1; e_km = 1000;
e_beta = 1e-4; e_gamm = 1;

% Scaled parameters
inputs.model.par = [MM, VV, lamb, Kcod/e_Kcod, Kx/e_Kx, alpha/e_alpha, ...
                    km/e_km, beta/e_beta, gamm/e_gamm, pH, TT, ...
                    e_Kcod, e_Kx, e_alpha, e_km, e_beta, e_gamm];

%% 5. EXPERIMENT SETUP
inputs.exps.n_exp = 1;
iexp = 1;

% Time settings
tf = 8 * 60;  % Final time in minutes
tt = 0:1:tf;  % Time vector
tm = 55:60:tf;  % Sampling times

% Initial conditions and observables
inputs.exps.exp_y0{iexp} = [0, 0, 0];
inputs.exps.t_f{iexp} = tt(end);
inputs.exps.t_s{iexp} = tm;
inputs.exps.n_s{iexp} = numel(tm);

inputs.exps.n_obs{iexp} = 3;
inputs.exps.obs_names{iexp} = char('log10CFUs100ml','yCOD','yFC');
inputs.exps.obs{iexp} = char('log10CFUs100ml=log10(0.1*XX+1)','yCOD=COD','yFC=FC');

% Input design
inputs.exps.exp_type{iexp} = 'od';
inputs.exps.u_type{iexp} = 'od';
inputs.exps.u_interp{iexp} = 'stepf';

tu = [0 1 4*60 4*60+1 tf];
nsteps = numel(tu) - 1;
inputs.exps.n_steps{iexp} = nsteps;

inputs.exps.u_min{iexp} = [zeros(1,nsteps); DD*ones(1,nsteps)];
inputs.exps.u_max{iexp} = inputs.exps.u_min{iexp};
inputs.exps.u_max{iexp}(1,1:2:end) = 1000;  % Apply pulses

inputs.exps.t_con{iexp} = tu;

% Error model and data
inputs.PEsol.PEcost_type = 'llk';
inputs.exps.error_data{iexp} = [0.5*ones(numel(tm),1), 10*ones(numel(tm),1), 0.1*ones(numel(tm),1)];
inputs.exps.data_type = 'real';
inputs.exps.exp_data{iexp} = 1;

%% 6. SOLVER SETTINGS
inputs.nlpsol.nlpsolver = 'eSS';
inputs.nlpsol.eSS.maxeval = 1e100;
inputs.nlpsol.eSS.local.solver = 'fmincon';
inputs.nlpsol.eSS.local.finish = 'fminsearch';
inputs.nlpsol.eSS.maxtime = 1;

inputs.OEDsol.OEDcost_type = 'Eopt';  % E-optimality criterion
inputs.plotd.plotlevel = 'min';
warning off;

% Parameters for OED
inputs.PEsol.id_global_theta = char('Kcod','Kx','alpha','km','beta','gamm');
inputs.PEsol.global_theta_guess = [Kcod/e_Kcod, Kx/e_Kx, alpha/e_alpha, km/e_km, beta/e_beta, gamm/e_gamm];

%% 7. PREPARE AND RUN OED
AMIGO_Prep(inputs);

if frun == 1
    % Run OED optimization
    res_OED = AMIGO_OED(inputs);

    % Save results
    temp = num2str(res_OED.nlpsol.fbest, '%.2e'); temp(temp == '.') = 'p';
    name = ['data', inputs.OEDsol.OEDcost_type, '_optU_maxtopt', num2str(inputs.nlpsol.eSS.maxtime), '_best', temp];
    save(name);
    hgsave(name);

    % Display performance message
    disp('====================================================================================================');
    disp(['If ', num2str(res_OED.nlpsol.fbest), ' is greater than -2.45 (best found solution in article) =>']);
    disp('  the solution is suboptimal ');
    disp('  and you should run again the code or increase optimisation time inputs.nlpsol.eSS.maxtime');
    disp('====================================================================================================');
else
    % Load precomputed OED results
    load data_BEST_OEDsolution_Eopt.mat res;
end

%% 8. SIMULATE NON-OED EXPERIMENT
inputs.exps.t_s{1} = 15:60:tf;
tu = [0 1 426 427 tf];
nsteps = numel(tu) - 1;
inputs.exps.n_steps{iexp} = nsteps;
inputs.exps.u{iexp} = [zeros(1,nsteps); DD*ones(1,nsteps)];
inputs.exps.u{iexp}(1,1:2:end) = 125;
inputs.exps.t_con{iexp} = tu;

% Run simulation
res.obsNoOED = AMIGO_SObs(inputs);

%% 9. PARAMETER ESTIMATION FOR NON-OED
inputs.exps.exp_data{1} = res.obsNoOED.sim.sim_data{1};
inputs.exps.exp_type{1} = 'fixed';

inputs.PEsol.id_global_theta = char('Kcod','Kx','alpha','km','beta','gamm');
inputs.PEsol.global_theta_guess = inputs.model.par(4:9);
inputs.PEsol.global_theta_max = 10 * ones(size(inputs.PEsol.global_theta_guess));
inputs.PEsol.global_theta_min = zeros(size(inputs.PEsol.global_theta_guess));
inputs.nlpsol.eSS.log_var = 1:6;

% Simulate ideal conditions (no uncertainty)
inputs.PEsol.global_theta_max = inputs.PEsol.global_theta_guess;
inputs.PEsol.global_theta_min = inputs.PEsol.global_theta_guess;
inputs.nlpsol.nlpsolver = 'local_fminsearch';

% Run parameter estimation
res.PENoOED = AMIGO_PE(inputs);

%% 10. SAVE FINAL RESULTS
disp('Saving data in results/main_OED_and_nonOED_exps');
save('results/data_OED_and_nonOED_exps');

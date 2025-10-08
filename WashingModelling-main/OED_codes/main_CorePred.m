%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE: Core Prediction Simulations for OED and non-OED Experiments
% AUTHORS: Moreno-Razoa, Martínez-López, Vilas, Tudela, Gil, García
% DESCRIPTION: Performs Monte Carlo simulations using parameter uncertainty
%              from OED and non-OED experiments, and saves prediction data.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 1. Clean workspace
clear all;
close all;

%% 2. Load experimental results
load('../Results/sec320_OED/data_OED_and_nonOED_exps');

% Extract confidence intervals from both experiments
conf_OED = res.oed.conf_intervals;
conf_nonOED = res.PENoOED.fit.conf_interval;

%% 3. Loop over both experiment types: OED and non-OED
for ii = 1:2
    if ii == 1
        conf = conf_OED;
        fig_name = '../Results/sec320_OED/fig_CorePred';
        dat_name = '../Results/sec320_OED/data_CorePred';
    else
        conf = conf_nonOED;
        fig_name = [fig_name, '_nonOED'];
        dat_name = [dat_name, '_nonOED'];
    end

    %% 4. Simulation settings
    dt = 0.5;              % Time step in hours
    tf = 8;                % Final time in hours
    TIME = (0:dt:tf) * 60; % Time vector in minutes
    tref = (0:dt/100:tf) * 60; % High-resolution time vector
    INIT = [0 0 0];        % Initial conditions: [microbial, COD, FC]

    % Fixed parameters
    pH = 7.5;
    TT = 15;               % Temperature in °C
    p0 = [0.79 3.16 7.66 1.39 7.22 2.76]; % Nominal parameter values

    % Compute parameter bounds from confidence intervals
    pmax = p0 + conf;
    pmin = max(p0 - conf, 0); % Ensure non-negative lower bounds

    % Initialize storage for Monte Carlo simulations
    X_mc = []; COD_mc = []; FC_mc = [];

    %% 5. Monte Carlo simulations
    for jj = 1:1000
        if jj == 1
            p = p0; % First run with nominal parameters
        else
            p = pmin + (pmax - pmin) .* rand(1, 6); % Random sample
        end

        % Run simulation
        [t_mc, x] = ode15s(@theODE, TIME, INIT, [], p, pH, TT);

        % Extract state variables
        X = x(:,1); COD = x(:,2); FC = x(:,3);

        if jj == 1
            % High-resolution simulation for reference
            [t_ref, x_ref] = ode15s(@theODE, tref, INIT, [], p, pH, TT);
            Xor = x_ref(:,1); CODor = x_ref(:,2); FCor = x_ref(:,3);
        else
            % Store Monte Carlo results
            X_mc = [X_mc x(:,1)];
            COD_mc = [COD_mc x(:,2)];
            FC_mc = [FC_mc x(:,3)];
        end
    end

    %% 6. Save results
    save(dat_name);
end

%% 7. ODE system definition
function dx = theODE(t, x, p, pH, TT)
    % Constants
    MM = 10;      % kg
    VV = 5000;    % L
    lamb = 1.7e-3; % 1/min
    DD = 3.375e-3; % 1/min
    Fin = 0.05;   % Flow rate

    % Scaling factors
    e_Kcod = 100;
    e_Kx = 1e7;
    e_alpha = 1;
    e_km = 1000;
    e_beta = 1e-4;
    e_gamm = 1;

    % Parameters
    Kcod = p(1); Kx = p(2); alpha = p(3);
    km = p(4); beta = p(5); gamm = p(6);

    % State variables
    XX = x(1); COD = x(2); FC = x(3);

    % HOCl concentration calculation
    HOCl = FC / (1 + 10^(-((3000/(TT+273.15)) + 0.0253*(TT+273.15) - 10.0686) / 10^(-pH)));

    % ODEs
    dXX  = DD*(0 - XX) + (MM/VV)*Kx*e_Kx - alpha*e_alpha*(km*e_km/(km*e_km + COD))*HOCl*XX;
    dCOD = DD*(0 - COD) + (MM/VV)*Kcod*e_Kcod - gamm*e_gamm*beta*e_beta*COD*FC;
    dFC  = DD*(0 - FC) + 1000*Fin/VV - beta*e_beta*COD*FC - lamb*FC;

    dx = [dXX; dCOD; dFC];
end
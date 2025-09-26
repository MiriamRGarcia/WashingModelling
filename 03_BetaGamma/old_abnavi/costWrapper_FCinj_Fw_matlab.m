function J = costWrapper_FCinj_Fw_matlab(par, kp, expData, tFCinj,...
                               tFpin_s, tFpin_e, purpose)
% Wrapper to evaluate the cost function. 
% The model is called and the simulation results are compared with
% the experimental data
%keyboard
% Rename unknown parameters
alpha_m = par(1);
Kfc     = par(2);
Kco     = par(3);
Kilw    = par(4);
Kwil    = par(5);
Kilo    = par(6);
FCinj   = par(7);
Fw      = par(8);
K_m     = par(9);
n_COD   = par(10);
vA2     = par(11);

% Parameters that were estimated in previous versions but fixed in this one
% alpha in the pruduce equations is fixed to zero.
% Microorganisms flux from water to red lettuce is fixed to zero
% K_m in the michaelis-menten function (alpha) in the water is fixed
% leaving free alpha_m
Krlo    = Kilo;
Krlw    = Kilw;
Kwrl    = Kwil;

% Put together all parameters. In function "Model", some of the parameters
% (Frl, Fil) will be modified.
% The order of parameters must be kept
allParam = [alpha_m, K_m, Fw, kp.V, kp.Mil, kp.Mrl, kp.lambda, Kfc, Kco,...
            Kilw, Kwil, Krlw, Kwrl, kp.FC_in, kp.COD_in, kp.Xw_in, kp.Xil_in,...
            kp.Xrl_in, Kilo, Krlo, kp.Fil, kp.Frl, n_COD, vA2];
        	
% Call the simulation 
FC0  = expData.FC(1);   % Initial conditions for FC0
COD0 = expData.COD(1);  % Initial conditions for COD
[tl, xSol, ifl] = modelMatlab(allParam, kp.dtinj, FCinj, tFCinj, tFpin_s, tFpin_e,...
                              FC0, COD0);

% Rename the state variables
Fcsol  = xSol(:,1);
CODsol = xSol(:,2);
Xwsol  = xSol(:,3);
Xilsol = xSol(:,4);
Xrlsol = xSol(:,4);
% Use limit of detection is used
limitXw  = 10.0^(-0.2);
limitXil = 10.0^(-1.0);
limitXrl = 10.0^(-1.0);
Xwsol(Xwsol<=limitXw)    = limitXw;
Xilsol(Xilsol<=limitXil) = limitXil;
Xrlsol(Xrlsol<=limitXrl) = limitXrl;

% Interpolate the simulation results at the sampling times
xSamp = interp1(tl, xSol, expData.ts);

% Retrieve the state variables
Fcsim  = xSamp(:,1);
CODsim = xSamp(:,2);
Xwsim  = xSamp(:,3);
Xilsim = xSamp(:,4);

% Apply limits of detection to the measurements
Xwsim(Xwsim<limitXw)    = limitXw;
Xilsim(Xilsim<limitXil) = limitXil;
logXwsim  = log10(Xwsim);
logXilsim = log10(Xilsim);

% Objective function (least squares)
% Term for each measured states
JFC  = ((Fcsim - expData.FC')/expData.DFC).^2;   % Contribution of FC
JCOD = ((CODsim - expData.COD')/expData.DCOD).^2; % Contribution of COD
JXw  = ((logXwsim - expData.Xw')/expData.DXw).^2; % Contribution of Xw
%JXw  = ((Xwsim - 10.^expData.Xw')/expData.DXw).^2; % Contribution of Xw
JXil = ((logXilsim - expData.Xil')/expData.DXil).^2; % Contribution of Xil
%JXil = ((Xilsim - 10.^expData.Xil')/expData.DXil).^2; % Contribution of Xil
% Sum of all terms
J = (sum(JFC) + sum(JCOD) + sum(JXw) + sum(JXil))/(4*length(expData.ts));

% Plot the solution
switch purpose
    case{'draw'}
        % Plot the results
        figure
        subplot(2,3,1)
        hold on
        plot(tl, Fcsol,'LineWidth', 2) % FC simulated
        plot(expData.ts, expData.FC,'.','MarkerSize',10) % FC measured
        hold off
        xlabel('Time [min]','Fontsize',14)
        ylabel('FC [mg/L]','Fontsize',14)
        set(gca,'Fontsize',14,'LineWidth',2)
        subplot(2,3,2)
        hold on
        plot(tl, CODsol,'LineWidth', 2) % COD simulated
        plot(expData.ts, expData.COD,'.','MarkerSize',10) % COD simulated
        hold off
        xlabel('Time [min]','Fontsize',14)
        ylabel('COD [mg/L]','Fontsize',14)
        set(gca,'Fontsize',14,'LineWidth',2)
        subplot(2,3,3)
        hold on
        plot(tl, log10(Xwsol),'LineWidth', 2) % Xw simulated
        plot(expData.ts, expData.Xw,'.','MarkerSize',10) % Xw simulated
        xlabel('Time [min]','Fontsize',14)
        ylabel('Xw [log10(MPN/mL)]','Fontsize',14)
        set(gca,'Fontsize',14,'LineWidth',2)
        hold off
        subplot(2,3,4)
        hold on
        plot(tl, log10(Xilsol),'LineWidth', 2) % Xil simulated
        plot(expData.ts, expData.Xil,'.','MarkerSize',10) % Xil simulated
        xlabel('Time [min]','Fontsize',14)
        ylabel('Xil [log10(MPN/g)]','Fontsize',14)
        set(gca,'Fontsize',14,'LineWidth',2)
        hold off
        subplot(2,3,5)
        hold on
        plot(tl, log10(Xrlsol),'LineWidth', 2) % Xil simulated
%        plot(expData.ts, expData.Xil,'.','MarkerSize',10) % Xil simulated
        xlabel('Time [min]','Fontsize',14)
        ylabel('Xil [log10(MPN/g)]','Fontsize',14)
        set(gca,'Fontsize',14,'LineWidth',2)
        hold off
    case{'pe'}
end
return
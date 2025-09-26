function [tl, xSol, ifl] = modelMatlab(allPar, dtinj, FCinj, tFCinj, tFpin_s,...
                                       tFpin_e, FC0, COD0)
% Implementation of the produce wash model. The objective is to
% estimate unknown model parameters. Data is obtained from:
% Abnavi, M. D., Kothapalli C.R., Munther, D., Srinivasan, P. (2021). 
% "Chlorine inactivation of Escherichia coli O157:H7 in fresh produce wash process: Effectiveness and modeling." 
% International Journal of Food Microbiology 356:109364.
% FCw   [mg/L]
% CODw  [mg/L]
% Xw    [MPN/L]
% XL    [MPN/g]

% Rename parameters
alpha_m = allPar(1);
Km      = allPar(2);
Fw      = allPar(3);
V       = allPar(4);
Mil     = allPar(5);
Mrl     = allPar(6);
lambda  = allPar(7);
Kfc     = allPar(8);
Kco     = allPar(9);
Kilw    = allPar(10);
Kwil    = allPar(11);
Krlw    = allPar(12);
Kwrl    = allPar(13);
FC_in   = allPar(14);
COD_in  = allPar(15);
Xw_in   = allPar(16);
Xil_in  = allPar(17);
Xrl_in  = allPar(18);
nCOD    = allPar(23);
A2      = allPar(24);
% From allPar(19) to allPar(22) parameters are defined inside the for loop

% Time discretization
tl = 0:dtinj:tFpin_e(end); % min

% Initial conditions
x0  = [FC0, COD0, 0.0, 0.0, allPar(18)];

% Initialization
xSol(1,:) = x0;

% Controls (steps are implemented so this would not be necessary. I leave
% it just in case we want to introduce slopes)
nu      = 1;
pend    = zeros(1,nu);

% IVP solver parameters
rtol    = 1.0e-6;  % Relative integration tolerance
atol    = 1.0e-6;  % Absolute integration tolerance
options = odeset('RelTol',rtol,'AbsTol',atol);

% Initialize the counters for the addition of Free Chloride
% and lettuce
countFC = 1;
countL  = 1;

for ii = 1:length(tl)-1

    % Initial, final, control and integration time
    t_int    = [tl(ii) tl(ii+1)];

    % Is free chloride added in this step?
    if countFC<=length(tFCinj)
        if (abs(tl(ii)-tFCinj(countFC)))<1.0e-5
            FCi = FCinj;
            % The duration of the step is the same as the duration
            % of the FC addition, therefore the counter is updated
            % each time this "if condition" is matched
            countFC = countFC + 1;
        else
            FCi = 0.0;
        end
    else
        FCi = 0.0;
    end
    % Control term
    sFCinj = FCi;

    % Is lettuce added?
    if countL<=length(tFpin_e)
        if (tl(ii)>=tFpin_s(countL)) && (tl(ii)<=tFpin_e(countL))
            Kilo = allPar(19);
            Krlo = allPar(20);
            Fil  = allPar(21);
            Frl  = allPar(22);
            % The duration of the step is smaller than the duration
            % of the addition of lettuce. Therefore the counter only
            % must be updated at the end of the addition
            if (abs(tl(ii)-tFpin_e(countL)))<1.0e-5
                countL = countL + 1;
            end
            % At the beggining of the produce addition, the intial
            % condition of bacteria in red lettuce must be the inoculation
            % concentration
            if (abs(tl(ii)-tFpin_s(countL)))<1.0e-5
                x0(5) = allPar(18);
            end
        else
            Kilo = 0.0;
            Krlo = 0.0;
            Fil  = 0.0;
            Frl  = 0.0;
            % There is no produce entering the system, then initial
            % condition of bacteria in the produces is fixed to zero
            x0(4:5) = 0.0;
        end
    else
        Kilo = 0.0;
        Krlo = 0.0;
        Fil  = 0.0;
        Frl  = 0.0;
    end
%keyboard
   
    % Call the ODE solver
    [t, x] = ode15s(@(t,x) odeAbnavi(t, x, A2, alpha_m, nCOD, Km, Fw, V, lambda,...
                           Kfc, sFCinj, Mil, Kilo, Mrl, Krlo, Kco, Kilw, Krlw,...
                           Kwil, Kwrl, Fil, Frl, FC_in, COD_in, Xw_in, Xil_in, Xrl_in),...
                              t_int, x0', options);
  
    % New initial conditions and store the solution
    x0           = x(end,:);
    xSol(ii+1,:) = x0;
end

ifl = 1;
return

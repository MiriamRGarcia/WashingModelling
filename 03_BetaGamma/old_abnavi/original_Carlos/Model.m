function [tl, xSol, ifl] = Model(allPar, dtinj, FCinj, tFCinj, tFpin_s,...
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

% Time discretization
tl = 0:dtinj:tFpin_e(end); % min

% Initial conditions
x0  = [FC0, COD0, 0.0, 0.0, allPar(18)];

% Initialization
xSol(1,:) = x0;

% Controls
nu      = 1;
pend    = zeros(1,nu);

% Other parameters
iexp = 1;
n_st = length(x0);

% Number of parameters and rename parameters
npar     = length(allPar);
allParam = allPar; % thi is done so we can rewrite some parameters values during simulation (Fp, Fp_rl, Kop)

% IVP solver parameters
rtol        = 1.0e-6;  % Relative integration tolerance
atol        = 1.0e-6;  % Absolute integration tolerance
jacobian    = 0;       % No use of the Jacobian 
Mstepsize   = 50;      % Maximum step size
Mnumsteps   = 1e7;     % Maximum number of steps
Metestfails = 5e3;     % Maximum error test fails
sens_an     = 0;       % No sensitivity analysis

% Initialize the counters for the addition of Free Chloride
% and lettuce
countFC = 1;
countL  = 1;

for ii=1:length(tl)-1

    % Initial, final, control and integration time
    tI    = tl(ii);
    tF    = tl(ii+1);
    tu    = [tI tF];
    t_int = tu;

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
    uFC = FCi;

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

    % Rewrite some parameter values (Fp_rl, Fp, Kop)
    allParam(19) = Kilo;
    allParam(20) = Krlo;
    allParam(21) = Fil;
    allParam(22) = Frl;
  
    % Call the IVP solver
    [x, ifl, si] = washTop_complete(npar, 0, allParam, ones(1,npar),...
               tI, tF, length(t_int), t_int, n_st, x0, nu, length(tu), tu,...
               uFC, pend, rtol, atol, Mstepsize, Mnumsteps, Metestfails,...
               sens_an, jacobian, iexp); 

    % New initial conditions and store the solution
    x0           = x(end,:);
    xSol(ii+1,:) = x0;
end


return

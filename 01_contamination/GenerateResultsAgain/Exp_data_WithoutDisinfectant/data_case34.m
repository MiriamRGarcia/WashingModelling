%%&%=========================================================================
%%%%%%%                  Scenario 34
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 1;
tau             = (60)/60; % [min] Washing time
V               = 1315;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 34, Visit 1';
dat.infoProd{iexp}='Salad mix with carrots';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='34-Salad mix with carrots-Washing';

data=[  0	0       10      39.7	8.27	5.065	0	0
        27	10.5	0.28	150.375	7.96	5.38	221	0.14
        55	16.5	0.525	189     7.945	5.83	352	0.275
        75	13      0.11	248.75	7.905	6.03	528	0.42
        93	10      0.045	274.75	7.935	6.25	704	0.44
        105	19      0.125	276.5	7.9     6.87	792	0.36
 ];

dat.ts{iexp}	=  	[data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA

dat.Dis{iexp}	=   [data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(:,5)']; %[-]
dat.T{iexp}     =   [data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp} = tau;


%% visit 2 
iexp=iexp+1;

dat.info{iexp}  ='Case 34, Visit 2';
dat.infoProd{iexp}='Salad mix with carrots';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='34-Salad mix with carrots-Washing';

data=[  0	5500	0       5.25        7.99	3.85	0       1.5
        20	11350	0.015	137.75      7.975	5       88      1.5
        86	54000	0       172         7.915	5.465	176 	1.5
        111	19075	0       256.5       7.24	6.33	352     1.5
        143	46500	0.01	625         8.02	6.785	528     7
        156	21890	0.01	762.5       8.025	7.2     681     8

  ];

dat.ts{iexp}	=  	[data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA

dat.Dis{iexp}	=   [data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(:,5)']; %[-]
dat.T{iexp}     =   [data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp} = tau;


%%&%=========================================================================
%%%%%%%                  Scenario 6
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = 1;
tau             = (900)/60; % [min] Washing time
V               = 50000;    % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 6, Visit 1';
dat.infoProd{iexp}='Carrots';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='06-Carrots-Washing';

data=[  120	560000	0	29      7.695	20.6	14110	4.7
        180	805000	0	59.5	8.1     20.65	18810	6.35
        240	865000	0	54      8.11	20.65	20810	5.65
        300	6000000	0	46.5	8.055	20.65	25310	27.5
        360	6650000	0	31      7.59	19.65	29310	22
        420	8300000	0	51.5	7.55	19.7	33310	29
  ];

dat.ts{iexp}	=  	[0 data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [0 1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [0 1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA

dat.Dis{iexp}	=   [data(1,3)  data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [0          data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(1,5)  data(:,5)']; %[-]
dat.T{iexp}     =   [data(1,6)  data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [0          data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp} = tau;

%% visit 2 
iexp=iexp+1;
dat.info{iexp}  ='Case 6, Visit 2';
dat.infoProd{iexp}='Carrots';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='06-Carrots-Washing';

data=[  90	340000	0	27	8.475	17      4642	0.595
        150	410000	0	49	8.29	17.1	7737	0.695
        210	410000	0	35	8.315	16.95	10832	1.03
        270	785000	0	40	8.175	17      13927	5.6
        330	1145000	0	46	7.66	16.05	17022	5.5
        390	910000	0	39	7.625	16.35	20117	3.3
  ];

dat.ts{iexp}	=  	[0 data(:,1)'];        % [min]     Sampling times
dat.Nw{iexp}	=   [0 1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [0 1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA

dat.Dis{iexp}	=   [data(1,3)  data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [0          data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(1,5)  data(:,5)']; %[-]
dat.T{iexp}     =   [data(1,6)  data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [0          data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp} = tau;

%%&%=========================================================================
%%%%%%%                  Scenario 30
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
              
Objective       = 1;
tau             = (60)/60; % [min] Washing time
V               = 2600;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 30, Visit 1';
dat.infoProd{iexp}='Shredded carrots';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='30-Shredded carrots-Washing';

data=[  0	4650	0       59.25	7.41	11.385	0       8.8
        25	6050	0       1087.5	7.7     9.25	644     5.25
        50	2800	0.17	1772.5	7.72	8.68	1035	1.1
        75	31750	0       3082.5	7.735	8.285	1875	1.15
        100	3850	0.215	4120	7.69	7.665	2555	2.45
        125	39000	0.06	4785	7.665	7.65	3084	0.9
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

dat.info{iexp}  ='Case 30, Visit 2';
dat.infoProd{iexp}='Shredded carrots';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='30-Shredded carrots-Washing';

data=[  0	5535	0.07	5.18	7.78	10.12	0   	1.5
        50	9150	0.03	797.5	8.015	9.135	353 	1.5
        122	5800	0       2230	7.875	8.4 	1043	1.5
        194	6050	5.02	2752.5	7.74	7.915	1660	60.75
        266	4985	0.04	4390	7.71	7.685	2627	1.5
        293	9050	0.03	4300	7.83	7.92	2627	1.5
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


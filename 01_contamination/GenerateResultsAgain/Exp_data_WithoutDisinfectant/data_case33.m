%%&%=========================================================================
%%%%%%%                  Scenario 33
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 1;
tau             = (30)/60; % [min] Washing time
V               = 800;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 33, Visit 1';
dat.infoProd{iexp}='Parsley';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='33-Parsley-Washing';

data=[  0	6       0.12	3.56	7.945	10.85	0	0.2
        12	290     0.05	7.7     8.4     9.815	20	2.95
        24	350     0       8.675	8.44	9.465	40	2.1
        36	425     0.035	8.35	8.43	9.035	60	3.85
        48	2300	0       14.575	8.425	8.585	80	5.9
        72	2850	0       10.525	8.44	8.55	130	14.1

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

dat.info{iexp}  ='Case 33, Visit 2';
dat.infoProd{iexp}='Parsley';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='33-Parsley-Washing';

data=[  0       3       0.06	5.405	8.35	9.715	0	3.905
        12      685     0.015	4.13	8.415	9.035	50	2.9
		27      1285	0       7.25	8.435	8.515	70  3.7
        39      795     0.075	6.925	8.43	8.57	90	4.25
        51      1336	0.02	7.95	8.43	8.35	130	4.1
        90      555     0.035	9.3 	8.425	8.18	160	1.5
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


%%&%=========================================================================
%%%%%%%                  Scenario 31
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 1;
tau             = (180)/60; % [min] Washing time
V               = 2000;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 31, Visit 1';
dat.infoProd{iexp}='Curly endive and radicchio';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='31-Curly endive and radicchio-Washing';

data=[  0	25500	0.045	129     7.71	9.55	0       2.8
        36	146000	0.075	223.5	5.125	8.8     116     1.5
        72	22000	0.06	121.75	7.535	8.785	400     1.5
        108	85000	0.125	338     5.35	8.58	600     3.75
        144	81500	0.165	446.5	5.415	8.85	859     11
        180	34000	0.275	502.25	5.4     8.65	1231	10
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

dat.info{iexp}  ='Case 31, Visit 2';
dat.infoProd{iexp}='Curly endive and radicchio';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='31-Curly endive and radicchio-Washing';

data=[  0	5535	0.05	137.75	6.275	9       0       1.5
        40	9150	0.13	414     6.675	7.915	426     1.5
        100	5800	0.075	266.75	7.29	7.73	886     1.5
        144	6050	0.055	186.5	7.99	7.8     987     60.75
        185	4985	0.135	247.25	5.18	7.715	1308	1.5
        235	9050	0.11	215.5	5.33	7.65	1710	1.5

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


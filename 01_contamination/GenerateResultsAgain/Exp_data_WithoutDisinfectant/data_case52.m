%%&%=========================================================================
%%%%%%%                  Scenario 52
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 1;
tau             = (120)/60; % [min] Washing time
V               = 25000;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 52, Visit 1';
dat.infoProd{iexp}='Spinach';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='52-Spinach-Washing';

data=[  15      338000      0       18.325	8.98	21.185	0       15
        960     300000      0.065	313.75	7.635	22.35	90419	15
        1410	15050000	0.035	380     7.68	18.235	149512	45.5
        2390	323500      0.07	306.75	7.745	15.435	274245	15
        2850	286500      0.045	348     7.625	17.885	322295	86.5
        3960	21350000	0.045	457.75	7.63	17.18	431713	15
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

dat.info{iexp}  ='Case 52, Visit 2';
dat.infoProd{iexp}='Spinach';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='52-Spinach-Washing';

data=[  110     1335000     0.145	540     8.305	18.35	10850	12.9
        365     3000000     0.07	865     8.25	18      43675	15
        1575	30000000	0.045	802.5	7.345	18.885	188801	15
        1765	30000000	0.11	683.75	7.545	18.85	211089	15
        1980	30000000	0       1167.5	7.44	20.13	241347	15
        2165	30000000	0.065	913.75	7.4     19.17	275944	15
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


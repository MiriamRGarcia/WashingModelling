%%&%=========================================================================
%%%%%%%                  Scenario 28
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants


Objective       = '2';
tau             = (9)/60; % [min] Washing time
V               = 500;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 28, Visit 1';
dat.infoProd{iexp}='Peppers';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='28-Peppers-Washing';

data=[  105	570	270	2146	3.445	17.45	12600	0	0
        150	520	477	2136	3.35	17.8	18000	0	0
        195	330	578	2438	3.42	18.25	23400	0	0
        240	320	556	2474	3.495	18	    28800	0	0
        265	340	523	2364	3.57	18.4	31800	0	0
        275	325	523	2410	3.56	18.3	33000	0	0
 ];

dat.ts{iexp}	=  	[0 data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [0 1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [0 1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA
dat.ecol{iexp}  =   [0 1000*data(:,9)'];  % data(cfus/ml)*1000 ==>cfus/L E.COLI

dat.Dis{iexp}	=   [data(1,3)  data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [0          data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(1,5)  data(:,5)']; %[-]
dat.T{iexp}     =   [data(1,6)  data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [0          data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp}=tau;


%% visit 2 
iexp=iexp+1;
dat.info{iexp}  ='Case 28, Visit 2';
dat.infoProd{iexp}='Peppers';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='28-Peppers-Washing';

data=[  90	5150	258	    1396	3.685	13.9	13765	0	0
        120	4150	428.5	1733	3.405	13.55	18353	0	0
        150	2900	417.5	2232	3.315	14.15	22941	0	0
        180	8050	365	    2126	3.505	14.15	27529	0	0
        220	6700	347	    2204	3.55	14.5	33647	0	0
        255	9200	377	    1586	3.51	14.5	39000	0	0
 ];


dat.ts{iexp}	=  	[0 data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [0 1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [0 1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA
dat.ecol{iexp}  =   [0 1000*data(:,9)'];  % data(cfus/ml)*1000 ==>cfus/L E.COLI

dat.Dis{iexp}	=   [data(1,3)  data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [0          data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(1,5)  data(:,5)']; %[-]
dat.T{iexp}     =   [data(1,6)  data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [0          data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp}=tau;


%%&%=========================================================================
%%%%%%%                  Scenario 40
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (60)/60; % [min] Washing time
V               = 3000;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 40, Visit 1';
dat.infoProd{iexp}='Fresh-cut lettuce';
dat.infoProc{iexp}='washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='40-Fresh-cut lettuce-Washing';
    
data=[  15	0.105	34.85	108	7.3	    12.6	1321	0	0
        30	0.135	10.65	340	7.31	10.75	1357	0	0
        45	0.125	9.05	331	7.345	10.65	1393	0	0
        60	2.9	    11	    425	7.36	7.8	    1429	0	0
        75	5.25	13.05	409	7.41	7	    1464	0	0
        90	8.05	10.65	641	7.195	7.85	1500	0	0
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
dat.info{iexp}  ='Case 40, Visit 2';
dat.infoProd{iexp}='Fresh-cut lettuce';
dat.infoProc{iexp}='washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='40-Fresh-cut lettuce-Washing';

data=[  15	325	    12.1	225	7.3	    13.35	1644	0	0
        30	645	    0.845	320	7.315	13.6	1689	0	0
        45	16.5	0.905	408	7.19	9.3	    1733	0	0
        60	305	    14.8	392	7.125	8.085	1778	0	0
        90	20.5	6.95	488	7.185	8.05	1867	0	0
        135	25.5	8.8	    654	7.21	7.8	    2000	0	0
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

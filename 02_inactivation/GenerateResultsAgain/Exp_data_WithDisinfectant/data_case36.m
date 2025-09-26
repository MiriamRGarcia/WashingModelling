%%&%=========================================================================
%%%%%%%                  Scenario 36
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (240)/60; % [min] Washing time
V               = 1500;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 36, Visit 1';
dat.infoProd{iexp}='Tomatoes/cucumbers';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='36-Tomatoes/Cucumbers-Washing';

data=[  20	0.9	    14.15	166	8.38	18	    200	    0	0
        80	2.55	14.05	144	8.62	16.5	800	    0	0
        140	0.9	    20.4	74	8.675	16.05	1399	0	0
        200	1.6	    22.15	80	8.67	14.45	1999	0	0
        260	0.435	25.1	85	8.655	15.35	2598	0	0
        320	0.25	28.95	63	8.675	15	    3198	0	0
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
dat.info{iexp}  ='Case 36, Visit 2';
dat.infoProd{iexp}='Tomatoes/cucumbers';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='36-Tomatoes/Cucumbers-Washing';

data=[  65	0	    52.2	101	    8.39	16.85	1182	0	0
        95	0	    57.6	100	    8.4	    16.15	1728	0	0
        110	0.125	59.9	103	    8.445	15.75	2001	0	0
        125	0.135	71.4	91	    8.435	15.5	2274	0	0
        160	0.8	    46	    163	    8.365	16.7	2911	0	0
        230	0.18	39.9	108	    8.38	17.55	4184	0	0
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


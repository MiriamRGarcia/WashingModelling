%%&%=========================================================================
%%%%%%%                  Scenario 9
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (240)/60; % [min] Washing time
V               = 13000;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 9, Visit 1';
dat.infoProd{iexp}='Apples';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='09-Apples-Dumping';

data=[ 225	10	8.59	57.5	7.655	5.3	13558	0	0
       450	0	7.8	    51.5	7.71	4.8	17150	0	0
       645	10	6.84	53.5	7.715	4.8	24927	0	0
       1625	5	3.11	91	    7.675	4.6	54233	0	0
       1860	55	2.35	93	    7.705	4.9	59478	0	0
       2100	10	2.1	    100	    7.705	5.3	65612	0	0
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
dat.info{iexp}  ='Case 9, Visit 2';
dat.infoProd{iexp}='Apples';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='09-Apples-Dumping';

data=[  90	    35	3.53	55.5	7.63	5	6649	0	    0
        330	    0	2.06	176	    7.485	4.5	18200	0	    0
        1500	5	0.995	213.5	7.67	5.5	20901	0	    0
        1770	10	0.31	214.5	7.635	5.6	28648	0.005	0
        2955	25	0.03	208	    7.655	6.7	30295	0.24	0
        3205	20	0.23	203.5	7.65	5.3	44552	0.02	0
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


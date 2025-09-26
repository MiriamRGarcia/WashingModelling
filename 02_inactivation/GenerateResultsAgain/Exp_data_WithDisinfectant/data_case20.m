%%&%=========================================================================
%%%%%%%                  Scenario 20
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (50)/60; % [min] Washing time
V               = 5000;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 20, Visit 1';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='20-Peaches/Nectarines-Dumping';

data=[  90	    35	19.7	166.5	8.25	21.5	1500	0.315	0
        187.5	20	12.35	110	    7.94	21.5	5160	0	    0
        1655	0	47.5	108.5	8.11	20.4	24660	0	    0
        2975	0	51.8	143	    8.12	21.6	31729	0.005	0
        3160	0	32.65	191	    8.155	21.9	37200	0.025	0
        4540	0	35.75	254	    8.125	21.9	48019	0.005	0
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
dat.info{iexp}  ='Case 20, Visit 2';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='20-Peaches/Nectarines-Dumping';

data=[  80	    10	21.5	113	    8.33	24.2	2000	0	    0
        260	    10	12.95	118	    7.73	23.7	5000	0.005	0
        1640	35	13.55	186.5	8.055	23.5	14768	0	    0
        2410	40	23.25	290	    8.205	24.5	26990	0	    0
        2900	20	15	    303.5	8.045	23.3	33509	0	    0
        4510	20	13.35	272	    8.07	22.1	44702	0.005	0
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


%%&%=========================================================================
%%%%%%%                  Scenario 19
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (240)/60; % [min] Washing time
V               = 12000;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 19, Visit 1';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='19-Peaches/Nectarines-Dumping';

data=[ 30	50	    6.5 	1   	7.975	18.9	3793	0	0
       255	15	    13.65	0   	8.105	12.9	27300	0	0
       1452	355	    8.46	3   	7.91	14.1	45625	0	0
       1710	30	    8.87	47  	7.895	11.8	67866	0	0
       2915	90	    11.2	88.5	7.92	13  	99065	0	0
       3135	1155	6.71	85.5	7.805	11.7	128397	0	0
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
dat.info{iexp}  ='Case 19, Visit 2';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='19-Peaches/Nectarines-Dumping';

data=[  60  	60  	7.32	42	    7.995	20.1	7750	0.035	0
        285 	1175	9.68	98	    8.015	14.1	31719	0   	0
        1490	110 	10.85	122	    7.83	14.7	78306	0   	0
        1715	40  	4.81	150.5	7.8 	12.7	104369	0.205	0
        2940	40  	8.92	168	    7.755	15.1	135908	0.005	0
        3170	140 	13.55	178.5	7.905	13  	155366	0.085	0
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

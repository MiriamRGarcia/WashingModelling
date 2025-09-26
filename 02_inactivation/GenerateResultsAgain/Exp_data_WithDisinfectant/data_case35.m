%%&%=========================================================================
%%%%%%%                  Scenario 35
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (240)/60; % [min] Washing time
V               = 1500;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 35, Visit 1';
dat.infoProd{iexp}='Tomatoes/cucumbers';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='35-Tomatoes/Cucumbers-Pre-washing';

data=[ 20	115	0.6	    141	8.585	15.1	200	    0	0
       80	140	1.84	193	8.59	14.2	800	    0	0
       140	130	3.875	319	8.49	15	    1399	0	0
       200	110	4.805	217	8.575	15.8	1999	0	0
       260	115	5.8	    94	8.555	14.55	2598	0	0
       320	115	22.2	147	8.63	14.15	3198	0	0
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
dat.info{iexp}  ='Case 35, Visit 2';
dat.infoProd{iexp}='Tomatoes/cucumbers';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='35-Tomatoes/Cucumbers-Pre-washing';

data=[  65	15	    35.25	1190	8.4	    18.2	1182	0	0
        95	13	    33.45	893	    8.295	16.85	1728	0	0
        110	24.5	34.85	896	    8.395	15.5	2001	0	0
        125	36	    25.7	1133	8.34	16.3	2274	0	0
        160	45	    21	    830	    8.315	16.45	2911	0	0
        230	42.5	19.65	1094	8.375	17.6	4184	0	0
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


%%&%=========================================================================
%%%%%%%                  Scenario 60
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (420)/60;  % [min] Washing time
V               = 2500;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 60, Visit 1';
dat.infoProd{iexp}='Parsley';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='60-Parsley-Washing';

data=[  0	0	103	    253.25	7.36	20.55	0	    1.45	0
        105	0	780.5	587.25	4.415	21.215	3412	0.7	    0
        195	0	1520	1052.5	4.265	21.6	6062	3.85	0
        300	0	645.5	1025	4.325	21.785	8834	0	    0
        390	0	670	    1300	4.085	21.47	10787	2.1	    0
        480	0	1112.5	1600	3.96	21.15	12317	0	    0
 ];

dat.ts{iexp}	=  	[data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA
dat.ecol{iexp}  =   [1000*data(:,9)'];  % data(cfus/ml)*1000 ==>cfus/L E.COLI

dat.Dis{iexp}	=   [data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(:,5)']; %[-]
dat.T{iexp}     =   [data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp}=tau;


%% visit 2 
iexp=iexp+1;
dat.info{iexp}  ='Case 60, Visit 2';
dat.infoProd{iexp}='Parsley';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='60-Parsley-Washing';

data=[  0	0	125.5	191.75	7.22	19.835	0	    0.01	0
        105	0	426.5	538.75	4.485	19.85	4263	0.56	0
        195	0	620	    588.5	4.185	19.95	7917	0.015	0
        345	0	76	    140.5	7.36	19.635	11094	0.01	0
        405	0	383.5	405	    4.805	19.835	13284	0	    0
        465	0	492	    581.5	4.4	    20.215	15546	0	    0
 ];


dat.ts{iexp}	=  	[data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA
dat.ecol{iexp}  =   [1000*data(:,9)'];  % data(cfus/ml)*1000 ==>cfus/L E.COLI

dat.Dis{iexp}	=   [data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(:,5)']; %[-]
dat.T{iexp}     =   [data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp}=tau;


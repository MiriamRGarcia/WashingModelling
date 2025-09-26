%%&%=========================================================================
%%%%%%%                  Scenario 38
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (60)/60;  % [min] Washing time
V               = 1250;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 38, Visit 1';
dat.infoProd{iexp}='Diced Onion';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='38-Diced onion-Washing';

data=[ 75	7.55	85	    4502.5	5.435	11.05	310	    0	0
       120	6.4 	85  	3847.5	5.805	11.6	496	    0	0
       165	37  	19.5	5200	5.27	12.25	682	    0	0
       210	45  	69  	5862.5	5.265	11.95	868 	0	0
       285	30  	21.5	5957.5	5.03	12.4	1178	0	0
       300	29  	41.5	6267.5	4.91	12.6	1240	0	0
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
dat.info{iexp}  ='Case 38, Visit 2';
dat.infoProd{iexp}='Diced Onion';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='38-Diced onion-Washing';

data=[435	19.5	59.5	1715	6.43	9.6 	911 	0	0
      480	31.5	57	    3500	5.815	10.65	1005	0	0
      525	61.5	68.5	4872.5	5.255	10.95	1099	0	0
      570	45.5	58  	5642.5	5.005	12.05	1194	0	0
      615	63  	51.5	5777.5	5.14	10.55	1288	0	0
      660	85  	68	    3992.5	5.21	13.7	1382	0	0
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


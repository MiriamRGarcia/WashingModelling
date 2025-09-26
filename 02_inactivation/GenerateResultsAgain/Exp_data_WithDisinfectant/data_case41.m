%%&%=========================================================================
%%%%%%%                  Scenario 41
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (48)/60; % [min] Washing time
V               = 2500;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 41, Visit 1';
dat.infoProd{iexp}='Fresh-cut lettuce';
dat.infoProc{iexp}='washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='41-Fresh-cut lettuce-Washing';

data=[  345	0	    58	    322	8.38	6.6	    1271	0	0
        360	0.145	63.5	386	7.995	5.75	1326	0	0
        435	0.1	    49	    373	7.645	5.85	1603	0	0
        480	0.02	49	    378	7.81	6.1	    1768	0	0
        525	0.05	76	    299	7.815	6.15	1934	0	0
        570	0.105	95.5	172	8.065	6.2	    2100	0	0
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
dat.info{iexp}  ='Case 41, Visit 2';
dat.infoProd{iexp}='Fresh-cut lettuce';
dat.infoProc{iexp}='washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='41-Fresh-cut lettuce-Washing';

data=[  315 	4.3 	64	    385.5	8.145	6.4	    2863	0	0
        360 	4.1 	79	    409	    8.045	6.3	    3272	0	0
        405 	5	    110	    500	    8.17	6.25	3681	0	0
        450 	3.8 	115	    354	    8.245	6.05	4090	0	0
        495 	4.8 	159.5	360	    8.33	6.05	4499	0	0
        540 	4.5 	192	    833	    8.11	6.15	4909	0	0
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

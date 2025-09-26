%%&%=========================================================================
%%%%%%%                  Scenario 16
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 2;
tau             = (94.5)/60; % [min] Washing time
V               = 5000;      % [L]   Tank volume

% Disinfectant: Na

%% visit 1 
iexp=iexp+1;
dat.info{iexp}  ='Case 16, Visit 1';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='16-Peaches/Nectarines-Dumping';

data=[  1575	210	1.25	63.5	7.5     20.05	330415      0       0
        9080	535	2.155	34      7.585	20.05	1115317     3.4     0
        31920	5	3.11	140.5	7.62	17.8	3381614     4.095	0.005
        41900	55	1.99	62      7.56	19.6	4433599     0       0
        52010	255	1.27	66.5	7.64	16.4	5390204     2.5     0
        59290	60	2.01	53      7.585	16.9	5746429     0.645	0.01
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

dat.info{iexp}  ='Case 16, Visit 2';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='16-Peaches/Nectarines-Dumping';

data=[  175     20	0.515	69.5	7.35	14      3347	0.335	0
        17760	10	1.55	14.5	7.055	16.1	70287	0.065	0
        29055	0	0.875	43.5	6.72	17.2	220212	0       0
        37695	85	0.435	219     7.03	16.4	456807	0.01	0
        50640	15	0.965	94      7.31	14.6	1355061	0.09	0
        60705	65	1.3     81      7.245	14.7	2589287	0.025	0
  ];

dat.ts{iexp}	=  	[0 data(:,1)'];        % [min]     Sampling times
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

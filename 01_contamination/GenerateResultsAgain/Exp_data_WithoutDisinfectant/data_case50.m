%%&%=========================================================================
%%%%%%%                  Scenario 50
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 1;
tau             = (600)/60; % [min] Washing time
V               = 1500;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 50, Visit 1';
dat.infoProd{iexp}='Spinach';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='50-Spinach-Washing';

data=[  0       60000	0.015	49.775	8.075	15.8	0       2.3
        1130	39500	0.38	82.5	8.05	14.15	170000	4.75
        1650	26950	0.145	90.25	8.35	14.115	245000	6.75
        2820	205000	0.055	220.5	8.245	14.315	440000	20
        5950	1845000	0.01	208.5	7.965	15.92	930000	273
        6900	3000000	0.025	76.25	8.15	15.1	1055000	114.5
  ];

dat.ts{iexp}	=  	[data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [1000*data(:,2)'];  % data(cfus/ml)*1000 ==> cfus/L
dat.Nlis{iexp}  =   [1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA

dat.Dis{iexp}	=   [data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(:,5)']; %[-]
dat.T{iexp}     =   [data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp} = tau;


%% visit 2 
iexp=iexp+1;

dat.info{iexp}  ='Case 50, Visit 2';
dat.infoProd{iexp}='Spinach';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='50-Spinach-Washing';

data=[  0       300000      0.415	195.5	8.41	27.83	0       43.5
        905     3000000     0       688     8.04	22.88	99087	150
        1390	26100000	0.055	298     7.935	26.815	160355	150
        2345	26200000	0.05	292.5	7.985	21.6	286396	61
        3785	4350000     0.035	216.5	8.17	21.485	470146	108
        5200	12750000	0       407     7.865	22.215	609149	150
];

dat.ts{iexp}	=  	[data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA

dat.Dis{iexp}	=   [data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(:,5)']; %[-]
dat.T{iexp}     =   [data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp} = tau;


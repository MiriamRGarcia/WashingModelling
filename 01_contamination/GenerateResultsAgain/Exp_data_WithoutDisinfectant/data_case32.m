%%&%=========================================================================
%%%%%%%                  Scenario 32
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 1;
tau             = (120)/60; % [min] Washing time
V               = 1500;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 32, Visit 1';
dat.infoProd{iexp}='Baby leaves';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='32-Baby leaves-Washing';

data=[  0	6200	0       4.36	8.075	12.165	0       1.55
        108	105000	0       217     8.05	11.515	102.72	130
        216	104500	0.015	22.25	8.06	11.59	218.4	101
        324	82500	0       42.6	8.035	11.615	353.12	91.5
        432	74500	0       38.675	8.05	11.44	528.68	156
        540	85000	0       12.775	8.1     11.18	882.44	150

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


%% visit 2 
iexp=iexp+1;

dat.info{iexp}  ='Case 32, Visit 2';
dat.infoProd{iexp}='Baby leaves';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='32-Baby leaves-Washing';

data=[  0	126     0.025	2.425	8.135	11.33	0       0.365
        90	15550	0.02	96      8.025	10.47	124.5	2.07
        198	33500	0       15.265	8.09	10.415	363.14	1.5
        303	91000	0.01	25.315	8.09	10.4	566.06	1.5
        408	78500	0.03	35.75	8.095	10.535	886.82	1.5
        510	123000	0       46.25	8.08	10.4	1308.22	1.5

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


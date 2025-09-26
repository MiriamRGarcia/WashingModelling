%%&%=========================================================================
%%%%%%%                  Scenario 51
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 1;
tau             = (300)/60; % [min] Washing time
V               = 40000;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 51, Visit 1';
dat.infoProd{iexp}='Spinach';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='51-Spinach-Washing';

data=[  85      2590000     0.015	260.25      8.57	18.95	11157	11.5
        630     21200000	0       552.5       8.185	20.32	93855	21
        1570	168000000	0.02	245.625     7.795	20.55	194000	121
        2070	30000000	0.015	538         7.48	21.33	269624	150
        2985	69500000	0       973         7.26	19.835	411385	150
        4470	50500000	0       775.5       7.905	20.435	628203	20.5
];

dat.ts{iexp}	=  	[0 data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [0 1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [0 1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA

dat.Dis{iexp}	=   [data(1,3)  data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [0          data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(1,5)  data(:,5)']; %[-]
dat.T{iexp}     =   [data(1,6)  data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [0          data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp} = tau;


%% visit 2 
iexp=iexp+1;

dat.info{iexp}  ='Case 51, Visit 2'; %%MRG
dat.infoProd{iexp}='Spinach';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='51-Spinach-Washing';

data=[  185     218000      0.02	395.25	8.395	24      27057	4.55
        700     21150000	0.12	1105	7.725	25.285	99209	8.5
        1630	4050000     0.02	981     7.695	24.55	232240	150
        2225	79500000	0.07	1085	7.995	25.035	329650	39.5
        3070	93000000	0.015	1020	7.755	23.35	455303	17
        4510	34000000	0.01	1105	7.98	23.915	660621	13
];

dat.ts{iexp}	=  	[0 data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [0 1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [0 1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA

dat.Dis{iexp}	=   [data(1,3)  data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [0          data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(1,5)  data(:,5)']; %[-]
dat.T{iexp}     =   [data(1,6)  data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [0          data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp} = tau;


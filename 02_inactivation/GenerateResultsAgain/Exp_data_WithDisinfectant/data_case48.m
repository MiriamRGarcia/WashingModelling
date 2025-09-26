%%&%=========================================================================
%%%%%%%                  Scenario 48
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 2;
tau             = (30)/60;   % [min] Washing time
V               = 2000;      % [L]   Tank volume

% Disinfectant: Na

%% visit 1 
iexp=iexp+1;
dat.info{iexp}  ='Case 48, Visit 1';
dat.infoProd{iexp}='Salad mix';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='48-Salad mix-Washing';

data=[  50	25	183.8	284 	6.915	6.5	105     0.025	0
        75	80	91.9	801.5	6.445	6.7	265     0       0
        105	175	97      1169.5	7.385	5.4	481     1.025	0.0125
        135	5	137.5	912.5	7.04	4.9	625     0       0
        175	25	95.1	1827	5.76	4.8	841     0.04	0
        215	310	3.87	2903.5	4.745	5.6	1057	1.4     0
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
dat.info{iexp}  ='Case 48, Visit 2';
dat.infoProd{iexp}='Salad mix';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='48-Salad mix-Washing';

data=[  50	0	187.5	337     7.695	10.7    100     0	0
        85	0	260     709     7.78	10.4    400     0	0
        110	0	148.5	890     7.63	8.8     600 	0	0
        160	10	161.5	1051	7.725	9.1     780     0	0
        190	5	50.65	1829	7.4     8.5     1100	0	0
        220	50	11.2	2248.5	7.315	8.5     1288	0	0
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

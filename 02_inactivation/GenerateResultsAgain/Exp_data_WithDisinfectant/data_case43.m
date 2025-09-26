%%&%=========================================================================
%%%%%%%                  Scenario 43
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 2;
tau             = (60)/60;   % [min] Washing time
V               = 2300;      % [L]   Tank volume

% Disinfectant: Ca

%% visit 1 
iexp=iexp+1;
dat.info{iexp}  ='Case 43, Visit 1';
dat.infoProd{iexp}='Shredded lettuce';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='43-Shredded lettuce-Pre-washing';

data=[  195	0.38	21.75	361 	8.01	14.35	2685	0	0
        240	0.345	12.9	719 	7.88	10.85	3305	0	0
        300	0.51	4.35	883	    8.055	9.6	    4131	0	0
        345	0.425	4.95	1103	8.115	9.4 	4750	0	0
        390	0.33	15.8	1091	8.5	    9.5 	5371	0	0
        480	0.27	15.8	749 	8.53	12.15	6609	0	0
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

dat.info{iexp}  ='Case 43, Visit 2';
dat.infoProd{iexp}='Shredded lettuce';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='43-Shredded lettuce-Pre-washing';

data=[  165	18	    1.36	1461	7.24	8.2 	4759	0	0
        210	19	    9.7	    1523	8.22	6.4 	6057	0	0
        255	16.5	8.4	    1627	8.255	5.9 	7355	0	0
        300	16	    12.8	1639	8.295	5.9	    8653	0	0
        345	20.5	2.005	1806	7.5	    5.85	9951	0	0
        390	20.5	0.6	    2092	7.68	6.35	11248	0	0
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

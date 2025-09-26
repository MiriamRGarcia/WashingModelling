%%&%=========================================================================
%%%%%%%                  Scenario 47
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 2;
tau             = (48)/60;   % [min] Washing time
V               = 2500;      % [L]   Tank volume

% Disinfectant: Ca

%% visit 1 
iexp=iexp+1;
dat.info{iexp}  ='Case 47, Visit 1';
dat.infoProd{iexp}='Baby leaves';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='47-Baby leaves-Washing';

data=[  345	1.95	53	    60	8.575	6.2	    4237	0	0
        360	1.6	    54.5	45	8.5	    5.95	4421	0	0
        435	2.35	55.5	130	7.425	6	    5342	0	0
        480	1.8	    45.5	216	6.97	6.15	5895	0	0
        525	2.3	    63.5	191	6.995	6.25	6447	0	0
        570	2.05	33.5	235	7.75	6.4 	7000	0	0
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

dat.info{iexp}  ='Case 47, Visit 2';
dat.infoProd{iexp}='Baby leaves';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='47-Baby leaves-Washing';

data=[  315	3.3	    53	    107	8.05	6.55	810	    0	0
        360	1.9	    77	    152	7.975	6.6	    925	    0	0
        405	2.05	70	    353	7.935	6.2	    1041	0	0
        450	2.45	66.5	675	8.005	6.05	1157	0	0
        495	2.25	80	    155	8.165	6.05	1272	0	0
        540	1.65	80.5	293	8.205	6.05	1388	0	0
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

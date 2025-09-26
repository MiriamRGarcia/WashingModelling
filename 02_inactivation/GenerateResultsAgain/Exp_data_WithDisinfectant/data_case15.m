%%&%=========================================================================
%%%%%%%                  Scenario 15
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 2;
tau             = (112.5)/60; % [min] Washing time
V               = 18000;      % [L]   Tank volume

% Disinfectant: Ca

%% visit 1 
iexp=iexp+1;
dat.info{iexp}  ='Case 15, Visit 1';
dat.infoProd{iexp}='Pears';
dat.infoProc{iexp}='Pre-sorting';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='15-Pears-Pre-sorting';

data=[ 270	20	99.4	64	    7.895	14.8	29480	0	    0
       550	35	83.1	68.5	8	    17.4	54623	0	    0
       1650	15	36.9	132	    8.165	20.6	113324	0	    0
       1980	20	14.3	219	    8.13	19.6	130839	0.005	0
       3100	0	28.45	320.5	8.215	16.5	194511	0	    0
       3440	0	13.55	328.5	8.15	14.5	209457	0.015	0  ];


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

dat.info{iexp}  ='Case 15, Visit 2';
dat.infoProd{iexp}='Pears';
dat.infoProc{iexp}='Pre-sorting';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='15-Pears-Pre-sorting';

data=[  50  	315	    33.65	50.5	7.24	20.4	2500	0	    0
        470 	230	    8.5 	101.5	7.605	20  	29800	0.175	0
        1550	4850	0.02	142.5	7.895	14.3	60000	16.85	0.475
        1905	505	    15  	163 	8.11	10.8	80000	0	    0
        2940	0	    49.6	167 	8.185	11.8	86000	0	    0
        3340	315	    42.6	195.5	8.04	9.2 	94600	0.015	0
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

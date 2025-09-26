%%&%=========================================================================
%%%%%%%                  Scenario 45
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 2;
tau             = (60)/60;   % [min] Washing time
V               = 1500;      % [L]   Tank volume

% Disinfectant: Ca

%% visit 1 
iexp=iexp+1;
dat.info{iexp}  ='Case 45, Visit 1';
dat.infoProd{iexp}='baby leaves';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='45-Baby leaves-Washing';

data=[  180	4.6	    66	37.5	8.075	6.85	810	    0	0
        225	29	    100	27.5	8.055	7.15	1013	0	0
        270	39	    40	26	    7.99	6.8	    1215	0	0
        315	26.5	40	31.5	7.81	6.75	1418	0	0
        360	14	    40	29	    8.035	6.95	1620	0	0
        405	42.5	40	42	    7.945	7.3	    1823	0	0
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

dat.info{iexp}  ='Case 45, Visit 2';
dat.infoProd{iexp}='Baby leaves';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-cut FVHs';
dat.infoID{iexp}='45-Baby leaves-Washing';

data=[  180	52	    54	8.7	    8.225	5.45	908	    0	0
        225	28.5	54	10.15	8.3	    5.4	    1135	0	0
        270	20	    54	8.4	    8.53	5.25	1362	0	0
        315	180	    54	8.9	    8.615	5.4	    1589	0	0
        360	640	    54	11	    8.69	5.55	1816	0	0
        405	695	    54	5.1	    8.765	5.65	2043	0	0
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

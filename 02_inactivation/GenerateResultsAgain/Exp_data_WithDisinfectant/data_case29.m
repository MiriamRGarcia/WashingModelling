%%&%=========================================================================
%%%%%%%                  Scenario 29
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants


Objective       = '2';
tau             = (60)/60; % [min] Washing time
V               = 550;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 29, Visit 1';
dat.infoProd{iexp}='Fruit mix';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='29-Fruit mix-Washing';

data=[  270	0	85	    41	8.595	5.1	    234	    0	0
        300	0	110	    116	8.565	5.2	    330	    0	0
        330	0	74	    326	8.025	5.55	719	    0	0
        360	0	72.5	631	7.885	6.05	1101	0	0
        390	0	68.5	663	7.905	6.3	    1205	0	0
        420	0	73.5	633	7.965	6.9	    1452	0	0
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
dat.info{iexp}  ='Case 29, Visit 2';
dat.infoProd{iexp}='Fruit mix';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='29-Fruit mix-Washing';

data=[  180	0	78	    61	9.075	4.15	222	0	0
        225	0	127	    154	8.52	4.4	    330	0	0
        270	0	88.5	222	8.185	4.7	    503	0	0
        315	0	62	    526	7.955	5.7	    751	0	0
        360	0	54	    471	7.995	6.45	881	0	0
        405	0	82.5	837	7.98	6.1	    953	0	0
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


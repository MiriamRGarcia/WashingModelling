%%&%=========================================================================
%%%%%%%                  Scenario 3
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

% About scenario: Theoretically, sodium hypochlorite was continously added by a pump
                % Scholar (Fludioxonil) is used to prevent postharvest rot of fruit
                % The water from the well is chlorinated in a tank before the processing line

Objective       = 1;
tau             = (210)/60; % [min] Washing time
V               = 6000;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 3, Visit 1';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='03-Peaches/Nectarines-Dumping';


data=[  40	3800	0       482     7.08	14.95	3011	2.4
        100	350     0       487.5   7.245	14.1	5897	1.8
        160	505     0       533.5   7.18	13.8	9102	0.14
        225	465 	0       597     7.36	13.9	12616	0.11
        285	605 	0       652.5   7.36	13.4	15639	0.13
        480	360 	0.02	655     7.28	13.1	22929	0.6
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
dat.info{iexp}  ='Case 3, Visit 2';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='03-Peaches/Nectarines-Dumping';

data=[  40	45350	0	74.5	7.65	18.5	2344	35.4
        95	49500	0	112     7.78	16.3	5770	13.9
        150	14650	0	133     7.735	14.9	9359	23.3
        210	15550	0	137.5	7.67	13.7	13223	1.95
        330	2780	0	169     7.765	13.6	17109	3.55
        420	5590	0	163     7.875	13.1	23615	3.35
 ];


dat.ts{iexp}	=  	[0 data(:,1)'];        % [min]     Sampling times
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

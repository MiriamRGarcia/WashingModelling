%%&%=========================================================================
%%%%%%%                  Scenario 8
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = 1;
tau             = (50)/60; % [min] Washing time
V               = 500;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 8, Visit 1';
dat.infoProd{iexp}='Celery';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='08-Celery-Washing';

data=[  120	935     0	29	8.225	25	1922	0.05
        180	490     0	32	8.275	25	2890	0.11
        240	55.5	0	34	8.23	22	3370	0
        300	47      0	26	8.095	22	4331	0
        360	18.5	0	33	8.18	22	5297	0
        420	23      0	35	8.24	22	6250	0
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
dat.info{iexp}  ='Case 8, Visit 2';
dat.infoProd{iexp}='Celery';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='08-Celery-Washing';

data=[  120	175 	0	35      8.065	24.05	1646	0
        165	265     0	38      8.04	24.4	2182	0.02
        210	530     0	26      8.115	24      2677	0.005
        285	400     0	26      8.14	24.6	3501	0.03
        300	145     0	43.5	8.095	24.4	3705	0.015
        345	450     0	49      8.12	24.2	4160	0.015
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


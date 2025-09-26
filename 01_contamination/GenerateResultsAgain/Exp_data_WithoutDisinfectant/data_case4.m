%%&%=========================================================================
%%%%%%%                  Scenario 4
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = 1;
tau             = (9)/60; % [min] Washing time
V               = 500;   % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 4, Visit 1';
dat.infoProd{iexp}='Peppers';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='04-Peppers-Pre-washing';

data=[  105	1285000	0	180	7.745	16.4	12600	13150	0.43
        150	2275000	0	168	7.14	16.45	18000	23550	0.345
        195	2750000	0	324	7.43	16.85	23400	27200	0.175
        240	810000	0	220	7.345	16.75	28800	330	    0.12
        265	685000	0	370	7.34	17.1	31800	850	    0.15
        275	330000	0	602	7.4	    17.2	33000	580	    0.11
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
dat.tau{iexp} = tau;

%% visit 2 
iexp=iexp+1;
dat.info{iexp}  ='Case 4, Visit 2';
dat.infoProd{iexp}='Peppers';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='04-Peppers-Pre-washing';

data=[  90	930000	0	212	7.905	12.9	13765	1830	0.26
        120	1390000	0	307	7.44	12.8	18353	1515	0.2
        150	1300000	0	286	7.88	13.3	22941	1210	0.28
        180	5700000	0	326	7.78	13.35	27529	1470	0.425
        220	5200000	0	392	7.805	12.95	33647	795	    0.155
        255	4800000	0	421	7.86	13.45	39000	690 	0.275
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
dat.tau{iexp} = tau;

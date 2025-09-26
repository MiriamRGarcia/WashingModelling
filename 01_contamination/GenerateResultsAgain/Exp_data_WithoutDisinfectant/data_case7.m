%%&%=========================================================================
%%%%%%%                  Scenario 7
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

% About scenario: 75% tomato, 13% pepper, 8% cucumber, 4% onion

Objective       = 1;
tau             = (17.5)/60; % [min] Washing time
V               = 2700;      % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 7, Visit 1';
dat.infoProd{iexp}='Vegetable mix';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='07-Vegetable-mix-Pre-washing';

data=[  255     4550000	0	178	6.745	20.5	31690	12100
        360     8450000	0	317	6.48	19.8	46930	7150
        465     3900000	0	140	6.76	20.6	51850	3850
        1680	4250000	0	198	6.755	20.05	97670	22650
        1800	3600000	0	182	6.805	19.8	116680	3850
        1900	3950000	0	226	6.735	19.55	135690	3800
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
dat.info{iexp}  ='Case 7, Visit 2';
dat.infoProd{iexp}='Vegetable mix';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='07-Vegetable-mix-Pre-washing';

data=[  210     5950000     0	942	7.25	19      38810	4250
        405     6950000     0	530	7.375	20.35	62910	7050
        450     9000000     0	356	7.495	19.7	79810	9500
        1670	10750000	0	279	7.79	20      106690	6750
        1785	9000000     0	411	7.74	18.35	123730	146.5
        1890	11600000	0	472	7.655	20.4	141730	135.5
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

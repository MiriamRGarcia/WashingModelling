%%&%=========================================================================
%%%%%%%                  Scenario 22
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

Objective       = '2';
tau             = (180)/60; % [min] Washing time
V               = 18000;    % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 22, Visit 1';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Pre-sorting';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='22-Peaches/Nectarines-Pre-sorting';

data=[  205	    5	69.55	98	    7.95	10.7	26500	0.01	0
        570	    15	44.15	166.5	8.025	10.7	53368	0.025	0
        1650	10	73.95	213.5	8.205	13.2	126868	0	    0
        2070	0	49	    259	    8.15	14.2	147153	0.005	0
        3030	5	77.8	286.5	8.205	14.1	177153	0	    0
        3440	0	51.25	280	    8.15	15.1	191173	0.015	0
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
dat.info{iexp}  ='Case 22, Visit 2';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Pre-sorting';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='22-Peaches/Nectarines-Pre-sorting';

data=[  170	    0	134.5	29	    7.81	20.4	24500	0	0
        500	    0	130.5	65.5	7.955	18.1	41837	0	0
        1610	0	94.7	128	    8.155	17.2	100537	0	0
        1935	0	65.1	171	    8.145	16.2	115593	0	0
        3035	0	112.2	198.5	8.23	18.4	174593	0	0
        3370	0	114.6	265	    8.265	14.7	198593	0	0
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


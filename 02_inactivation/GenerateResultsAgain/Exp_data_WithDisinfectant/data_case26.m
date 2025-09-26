%%&%=========================================================================
%%%%%%%                  Scenario 26
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
% Additional NOTE: number of entries for visit 1 differs from number of
%                  entries of visit 2 because the last one starts at ts=0 whereas vis1
%                  doesn't (don't know if this could cause and error in
%                  Miriam's code).

Objective       = '2';
tau             = (120)/60; % [min] Washing time
V               = 1000;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 26, Visit 1';
dat.infoProd{iexp}='Avocado';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='26-Avocado-Pre-washing';

data=[  30	20.5	2.24	260	    4.365	21	    2200	0	0
        60	73500	2.24	531	    4.495	19.6	4400	0	0
        100	2350	2.24	649	    4.585	19.35	7210	0	0
        135	7150	2.24	904	    4.68	18.5	9669	0	0
        195	23000	2.24	928	    4.775	18.15	13884	0	0
        225	35000	2.24	1002.5	4.845	20.1	15992	0	0
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
dat.info{iexp}  ='Case 26, Visit 2';
dat.infoProd{iexp}='Avocado';
dat.infoProc{iexp}='Pre-washing';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='26-Avocado-Pre-washing';

data=[  0	121.5	2.24	474	        4.45	21.15	0	    0	0
        55	46.5	2.24	616	        4.335	20.3	4425	0	0
        90	82000	2.24	1310	    4.56	18.9	7241	0	0
        150	428000	2.24	1763	    4.665	18.7	12068	0	0
        180	1164000	2.24	2997.5	    4.83	18.65	14482	0	0
        220	1220000	2.24	2042.5	    4.895	19.25	17700	0	0
 ];


dat.ts{iexp}	=  	[data(:,1)'];       % [min]     Sampling times
dat.Nw{iexp}	=   [1000*data(:,2)'];  % data(cfus/ml)*1000 ==>cfus/L TOTAL COUNT
dat.Nlis{iexp}  =   [1000*data(:,8)'];  % data(cfus/ml)*1000 ==>cfus/L lISTERIA
dat.ecol{iexp}  =   [1000*data(:,9)'];  % data(cfus/ml)*1000 ==>cfus/L E.COLI

dat.Dis{iexp}	=   [data(:,3)']; %[mg/L]
dat.COD{iexp}	=   [data(:,4)']; %[mg/L]
dat.pH{iexp}    =   [data(:,5)']; %[-]
dat.T{iexp}     =   [data(:,6)']; %[ºC]
dat.Kgp{iexp}   =   [data(:,7)']; %[Kg]

dat.V{iexp}     = V*ones(size(dat.Dis{iexp}));
temporalVar=tau*diff(dat.Kgp{iexp})./diff(dat.ts{iexp});
dat.M{iexp} = [temporalVar temporalVar(end)];
dat.tau{iexp}=tau;


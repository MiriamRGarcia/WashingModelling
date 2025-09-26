%%&%=========================================================================
%%%%%%%                  Scenario 61
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
% Additional NOTE: number of entries for visit 1 differs from number of
%                  entries of visit 2 because the last one starts at ts=0 whereas vis1
%                  doesn't (don't know if this could cause and error in
%                  Miriam's code).

Objective       = '2';
tau             = (420)/60;  % [min] Washing time
V               = 2500;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 61, Visit 1';
dat.infoProd{iexp}='Chives';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='61-Chives-Washing';

data=[  10	10	204	    1755	4.61	20.185	0	    0.15	0
        70	5	237	    2875	4.46	20.17	2268	0.45	0
        130	0	234.5	2810	4.455	20.48	4536	3.2	    0
        190	5	257	    3295	4.415	21.1	6640	0.6	    0
        250	0	243	    3415	4.44	21.215	8416	0.05	0
        310	0	217	    4600	4.5	    21.3	10192	0.15	0
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
dat.info{iexp}  ='Case 61, Visit 2';
dat.infoProd{iexp}='Chives';
dat.infoProc{iexp}='Washing';
dat.infoCat{iexp}='Frozen FVHs';
dat.infoID{iexp}='61-Chives-Washing';


data=[  0	0	290.5	2885	4.35	20.82	0	    0	    0
        65	0	236	    3225	4.325	20.965	1846	0.05	0
        125	0	245.5	3210	4.37	20.985	3550	0.25	0
        185	0	251.5	3135	4.39	20.935	5254	3.65	0
        245	2.5	1041.5	2815	4.34	21.18	5836	2	    0
        305	0	240	    2175	4.42	20.985	7582	0.15	0
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


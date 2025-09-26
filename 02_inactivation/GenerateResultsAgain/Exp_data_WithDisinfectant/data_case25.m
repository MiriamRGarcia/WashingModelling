%%&%=========================================================================
%%%%%%%                  Scenario 25
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 2;
tau             = (90)/60;   % [min] Washing time
V               = 1600;      % [L]   Tank volume

% Disinfectant: Ca

%% visit 1 
iexp=iexp+1;
dat.info{iexp}  ='Case 25, Visit 1';
dat.infoProd{iexp}='Cherries';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='25-Cherries-Dumping';

data=[  36	125     16.05	78.5	7.755	15.2	1712	0	0
        94	160     6.7     129.5	7.7     11.2	4177	0	0
        200	5500	0.02	218     7.54	7.7     7745	0	0.135
        297	35      0.79	267.5	7.505	6       11510	0	0
        410	50      1.68	388     7.485	8.8     17479	0	0
        475	35      6.14	401     8.005	8.2     20418	0	0
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

dat.info{iexp}  ='Case 25, Visit 2';
dat.infoProd{iexp}='Cherries';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='25-Cherries-Dumping';

data=[  35	65      12.8	91      7.965	17      1850	0	0
        131	860     10.34	180     8.175	11.4	5774	0	0
        225	70      5.62	217.5	8.115	9.4     9060	0	0
        310	85      0.1     295.5	7.55	11.3	12432	0	0
        400	2995	2.545	352     7.68	12.1	16605	0	0
        485	225     7.51	395     7.87	11.9	18944	0	0
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

%%&%=========================================================================
%%%%%%%                  Scenario 18
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants
                
Objective       = 2;
tau             = (60)/60; % [min] Washing time
V               = 8000;      % [L]   Tank volume

% Disinfectant: Na

%% visit 1 
iexp=iexp+1;
dat.info{iexp}  ='Case 18, Visit 1';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='18-Peaches/Nectarines-Dumping';

data=[  90      10	13.7	207     7.76	16.7	9500	0	0.11
        360     70	15.9	327     7.72	12      32100	0	0
        1515	10	9.73	619     7.725	10.9	70393	0	0
        2940	145	4.89	481     7.685	10.7	152174	0	0
        3180	60	17.65	629.5	7.935	9.2     183005	0	0
        4425	50	16.8	396     7.775	10.1	237763	0	0
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

dat.info{iexp}  ='Case 18, Visit 2';
dat.infoProd{iexp}='Peaches/Nectarines';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='18-Peaches/Nectarines-Dumping';

data=[  120     15      15.55	46.5	8.015	8.4     20376	0       0
        240     15      24.2	121     7.89	6.2     37807	0.005	0
        360     1065	22.8	323     7.825	7.3     50500	0.01	0
        1560	95      16.75	372.5	7.96	8.1     87648	0       0
        1680	5       19.3	502.5	7.945	7.9     104317	0       0
        1800	15      23.95	522.5	7.96	6.3     123400	0       0
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

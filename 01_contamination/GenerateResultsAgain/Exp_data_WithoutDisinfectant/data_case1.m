%%&%=========================================================================
%%%%%%%                  Scenario 1
%%&%=========================================================================
% NOTE: dat.FC{iexp} was changed here to dat.Dis{iexp} cause now we can have more than one disinfectants

% About scenario: Apples and pears (aprox. 60/40%) Ozonated water is used for the final rinse of fruit (sprayed)
                % Ozonated rinsing water goes down the tank, but it is not enough
                % to increase the ozone residual in the tank.
                % In the tank they use municipal water, no chlorine added
                % Chorine residual was also measured and was <0.16 ppm (data in column Z)
                % Possibly considered as objective 1
                % Working day 7-8 h. Not work on 03/03/23
                % Wood containers with cardboard to protect fruit came into the tank

Objective       = 'NonAssigned';
tau             = (500)/60; % [min] Washing time
V               = 3000;     % [L]   Tank volume

%% visit 1 
iexp=iexp+1;

dat.info{iexp}  ='Case 1, Visit 1';
dat.infoProd{iexp}='Apples';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='01-Apples-Dumping';

data=[  30      145     0.52	22.5	7.51	6.5	684     0.34
        1470	90      0.68	49.5	7.41	5.3	7060	2.3
        2930	105     0.645	59      7.335	5.4	14380	5.35
        8700	425     0.795	64.5	7.115	5.3	21223	3.7
        10130	1885	0.525	113     7.17	5.4	28123	19.55
        11580	1380	1.025	86.5	7.08	5.7	37823	28.15
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
dat.tau{iexp}=tau;


%% visit 2 
iexp=iexp+1;
dat.info{iexp}  ='Case 1, Visit 2';
dat.infoProd{iexp}='Apples';
dat.infoProc{iexp}='Dumping';
dat.infoCat{iexp}='Fresh-whole FVHs';
dat.infoID{iexp}='01-Apples-Dumping';

data=[  95      270     0       30.5	7.44	7       1600	1.1
        1500	1235	0.06	60      7.335	6.4     9271	7.45
        2950	6650	0.09	135     7.195	6.7     16778	10.95
        10200	6000	0.01	112.75	6.765	9.6     22808	68.5
        11580	55900	0.01	96.75	6.89	10      30176	27.5
        13050	45900	0.01	101.25	7.055	8.6     38521	37
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
dat.tau{iexp}=tau;


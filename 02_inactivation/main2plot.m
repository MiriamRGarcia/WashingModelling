clear all
close all

flag_save=1;
data=[11 1	    	1264.538706	8.722636976	0.689788058
11 2	    	1204.981856	4.284291745	0.355548237
15 1	    	923.8900041	4.636654944	0.501862226
15 2	    	1720.885119	7.310609772	0.424816839
16 1	    	1181.938729	0.885422275	0.074912705
16 2	    	1150.037506	2.15511399	0.187395105
18 1	    	1271.046246	3.778543941	0.297278242
18 2	    	1213.959401	3.940193755	0.324573767
19 1	    	2657.756523	2.32840611	0.087607954
19 2	    	1258.585838	1.75265636	0.139256005
20 1	    	1791.081207	18.13784629	1.012675819
20 2	    	849.306712	16.01466915	1.885616694
22 1	    	904.6265704	3.209172023	0.354751024
22 2	    	1453.002759	3.533451501	0.243182711
25 1	    	2685.956423	1.038124627	0.038650092
25 2	    	1191.116118	1.221732764	0.102570417
26 1	    	816.2462724	0.528764665	0.06478004
26 2	    	1145.83356	0.578963133	0.050527682
28 1	    	2092.339199	1.502792874	0.071823578
28 2	    	775.3923557	1.386658345	0.17883312
35 1	    	806.7613922	2.235075636	0.277042959
35 2	    	1042.361492	1.532581115	0.147029713
36 1	    	877.9367346	4.332901105	0.493532271
36 2	    	819.7222037	1.533654151	0.187094377
37 1	    	2035.510843	4.294322714	0.21097027
37 2	    	5539.091306	4.593993894	0.082937681
38 1	    	2110.212777	17.46075946	0.827440704
38 2	    	2094.946216	23.3859851	1.116304797
39 1	    	1557.663957	110.9765666	7.124551226
39 2	    	1099.362873	94.44748681	8.591111188
40 1	    	787.0186508	27.77455012	3.529084107
40 2	    	1627.086808	13.48552476	0.828814092
41 1	    	1230.770622	79.94750475	6.495727417
41 2	    	987.7804867	12.4549191	1.260899488
42 1	    	442.9015973	14.56462765	3.28845679
42 2	    	2033.326206	218.6910225	10.75533389
43 1	    	1517.504647	9.824897286	0.647437707
43 2	    	2135.369956	3.555845962	0.166521307
44 1	    	897.6437847	8.238007733	0.917736843
44 2	    	1119.887626	5.089147235	0.454433741
45 1	    	1404.740802	14.67058789	1.044362623
45 2	    	874.0793092	18.17546571	2.079384046
46 1	    	980.9497014	30.03231471	3.061555008
46 2	    	1122.44893	43.91606336	3.91252218
47 1	    	1423.512179	8.954108076	0.629015207
47 2	    	1374.172178	149.408992	10.87265442
48 1	    	992.9437031	43.05017686	4.335611045
48 2	    	1581.276739	95.37873151	6.03175454
60 1	    	151.2883085	0.670217417	0.443006749
60 2	    	992.3673453	0.570456872	0.057484446
61 1	    	3226.43112	0.673561083	0.020876351
61 2	    	360.2081515	0.967460437	0.268583715
9 1	    	1078.947901	3.185368193	0.295229101
9 2	    	1278.23087	7.195563309	0.56293143];


%% fig1
figure
set(gcf,'OuterPosition',[ 998   902   740   516])

subplot(131),violin(data(:,3));
set(gca,'XTick',1)
set(gca,'XTickLabel',{'K_m'})
ylabel('ppm-COD')
title({'COD Protective effect'},'FontSize',12,'Interpreter','latex')
% set(L,...
%     'Position',[0.342144997558755 0.158448049254246 0.0867049049753562 0.0820895552777644],...
%     'FontSize',10);




subplot(132),errorbar(7.66,0.02,'k','MarkerSize',12,'Marker','.',...
    'LineStyle','none',...
    'CapSize',15);
set(gca,'XTick',1)
set(gca,'XTickLabel',{'\alpha_{TC}'})
ylabel('1/min·ppm-HOCl')
title({'Inactivation for TC'},'FontSize',12,'Interpreter','latex')
ylim([5 8])



subplot(133),errorbar(5.32,0.07,'k','MarkerSize',12,'Marker','.',...
    'LineStyle','none',...
    'CapSize',15);;
set(gca,'XTick',1)
set(gca,'XTickLabel',{'\alpha_{Lis}'})
ylabel('1/min·ppm-HOCl')
title({'Inactivation for \textit{Listeria spp.}'},'FontSize',12,'Interpreter','latex')
ylim([5 8])


% bla=suptitle({'Estimated inactivation pararameters'})
% bla.Interpreter = 'latex';
if flag_save==1
    disp('fix fig')
    pause 
hgsave('fig_Km')
end

% %% fig2
% Km=mean(data(:,3));
% FCv=0:1:10;
% CODv = 0:500:6000;
% 
% [COD, FC] = meshgrid(CODv, FCv);
% T=25+273;
% pH=6.5;
% pKa=3000/T+0.0253*T-10.06;
% HOCl=FC/(1+(10^(-pKa)/10^(-pH)));
% 
% alp_list=5.48;
% logs=log10(exp(1))*alp_list*HOCl.*(Km./(Km+COD));
% 
% % Graficar la superficie
% figure
% surf(COD, FC, logs);
% 
% % Etiquetas y título
% xlabel('COD (ppm)');
% ylabel('FC (ppm)');
% zlabel('Reduction in log10');
% title('Effect of COD and FC on the inactivation of \textit{Listeria spp.}','Interpreter', 'latex')%Superficie de log10(X_0/X)=log10(e)\alpha_{Lis} HOCl COD/(COD+K_m)');
% shading interp; % Suaviza la superficie
% if flag_save==1
% hgsave('fig_inactivation')
% fig2eps
% end
% 
% %% fig3
% Km=mean(data(:,3));
% FC=10;
% COD=2500;
% Tv=273+[1:1:36];
% pHv=[1:0.1:9];
% 
% [T, pH] = meshgrid(Tv, pHv);
% pKa=3000./T+0.0253.*T-10.06;
% HOCl=FC./(1+(10.^(-pKa)./10.^(-pH)));
% 
% alp_list=5.48
% logs=log10(exp(1))*alp_list*HOCl.*(Km./(Km+COD));
% 
% % Graficar la superficie
% figure
% surf(T-273, pH, logs);
% 
% % Etiquetas y título
% xlabel('T (ºC)');
% ylabel('pH');
% zlabel('Reduction in log10');
% title('Effect of Temperature and pH on the inactivation of \textit{Listeria spp.}','Interpreter', 'latex')%Superficie de log10(X_0/X)=log10(e)\alpha_{Lis} HOCl COD/(COD+K_m)');
% shading interp; % Suaviza la superficie
% hgsave('fig_inactivation2')
% fig2eps
% % %%
% % figure;
% % [C, h] =contour(COD, FC, logs, 20, 'LineWidth', 1.5); % 20 contour levels
% % colorbar; % Add a color bar for reference
% % clabel(C, h, 'FontSize', 10, 'Color', 'k', 'FontWeight', 'bold');



%% fig2a
clear leg logs
Km=mean(data(:,3));
alp_list=5.48;
FCv=0:2.5:10;
CODv = 0:500:6000;
Tv=25+273;
pHv=7;

for ii=1:size(FCv,2)
    FC=FCv(ii);
    COD=CODv;
    T=Tv;
    pH=pHv;
    
    pKa=3000/T+0.0253*T-10.06;
    HOCl=FC/(1+(10^(-pKa)/10^(-pH)));
    
    logs(:,ii)=exp(-alp_list*HOCl.*(Km./(Km+COD)));
    leg{ii}=['FC=',num2str(FC),' pH=',num2str(pH)];
end

figure
subplot(121),semilogy(COD, logs,'LineWidth', 1);
ylim([1E-20,5])

% Etiquetas y título
xlabel('COD (ppm)');
ylabel('Survival fraction');
legend(leg,'Box', 'off','Location','southeast')

%% fig2b
clear leg logs
Km=mean(data(:,3));
alp_list=5.48;
FCv=FCv;
CODv = 1000;
Tv=25+273;
pHv=[5:0.25:9];

for ii=1:size(FCv,2)
    FC=FCv(ii);
    COD=CODv;
    T=Tv;
    pH=pHv(ii);
    
    pKa=3000/T+0.0253*T-10.06;
    HOCl=FC./(1+(10.^(-pKa)./10.^(-pHv)));
    HOCl
    logs(:,ii)=exp(-alp_list*HOCl.*(Km./(Km+COD)));
    leg{ii}=['FC=',num2str(FC),' COD=',num2str(CODv)];
end
% Graficar la superficie

subplot(122),semilogy(pHv, logs,'LineWidth', 1);
ylim([1E-20,5])
xlim([min(pHv) max(pHv)]);
% Etiquetas y título
xlabel('pH');
ylabel('Survival fraction');
legend(leg,'Box', 'off','Location','southeast')

bla=suptitle('Inactivation of \textit{Listeria spp.} at different FC')%Superficie de log10(X_0/X)=log10(e)\alpha_{Lis} HOCl COD/(COD+K_m)');
bla.Interpreter = 'latex';
%shading interp; % Suaviza la superficie

if flag_save==1
    disp('fix fig and press enter')
    pause
hgsave('fig_inactivation')

end

if flag_save==1
fig4latex
end
clear all
load('../01_contamination/NoDisinfectant_Dglobal_cteM_0p5Error.mat')

for ii=1:size(res.fit.local_theta_estimated,2)
    
    Kcod(ii)=res.fit.local_theta_estimated{ii}(1);
    Kx(ii)=res.fit.local_theta_estimated{ii}(2);
end
flag_save=1;

%%
close all
figure
set(gcf,'OuterPosition',[ 998   902   740   516])
%figa
subplot(132),
[h,L,MX,MED,bw]=violin(log10([Kcod']),'facecolor',[0.5 1 0])
set(gca,'XTick',1)
set(gca,'XTickLabel',{'K_{COD}'})
ylabel('log10(mg-COD/Kg-Product·min)')
title({'Magnitude of COD',...
       ' Contamination '},'FontSize',12,'Interpreter','latex')
set(L,...
    'Position',[0.342144997558755 0.158448049254246 0.0867049049753562 0.0820895552777644],...
    'FontSize',10);

%figb
subplot(133),violin(log10([Kx']),'facecolor',[1 0.5 1])
set(gca,'XTick',1)
set(gca,'XTickLabel',{'K_X'})
ylabel('log10(CFU/Kg-Product·min)')
title({'Magnitude of TC',...
       ' Contamination'},'FontSize',12,'Interpreter','latex')

%figc
subplot(131),errorbar(0.003374872,1.42468E-05,'k','MarkerSize',12,'Marker','.',...
    'LineStyle','none',...
    'CapSize',15);
set(gca,'XTick',1)
set(gca,'XTickLabel',{'D'})
ylabel('1/min')
title({'Dilution rate',' '},'FontSize',12,'Interpreter','latex')






if flag_save==1
    disp('toca lo que quieras para imprimir la figura')
    pause
    hgsave('fig_contam')
fig4latex
end

return




%%
close all
subplot(121),violin(log10(Kcod'))
subplot(122),violin(log10(Kx'))
%%
figure 
subplot(121),violin(Kcod')
subplot(122),violin(Kx')
%set(gca, 'YScale', 'log');
%  figure;
%  subplot(3,1,1);
%  ksdensity(log10(Kcod'));hold on
%  pause
%   hist(log10(Kcod'));
%   
  data=log10(Kcod');
  % Create histogram (normalized so it matches ksdensity scale)
figure;
histogram(data, 'Normalization', 'pdf', 'FaceAlpha', 0.3); 
hold on; % Keep the histogram while adding ksdensity

% Plot kernel density estimate
[f, xi] = ksdensity(data);
plot(xi, f, 'r', 'LineWidth', 2); % KDE with red line

% Labels and title
xlabel('Value');
ylabel('Density');
title('Histogram + Kernel Density Estimate (KDE)');
legend('Histogram', 'KDE');
grid on;
hold off;

% title('Default bandwidth (MATLAB chosen)');
% 
% % Small bandwidth (more detailed, possibly noisy)
% subplot(3,1,2);
% ksdensity(log10(Kcod'), 'Bandwidth', 0.1);
% title('Small bandwidth (0.1) - More detail');
% 
% % Large bandwidth (smoother curve)
% subplot(3,1,3);
% ksdensity(log10(Kcod'), 'Bandwidth', 0.5);
% title('Large bandwidth (0.5) - Smoother');
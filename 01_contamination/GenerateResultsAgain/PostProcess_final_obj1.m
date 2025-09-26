
save temp
def=1;
%% ====================================================================
% Common parameters
%%% ====================================================================

fs=10;
% localpar={'D','K_{COD}','K_X','K_m'};
nl=size(inputs.PEsol.id_local_theta{1},1);
opt=res.fit.thetabest';
for iexp=1:inputs.exps.n_exp
    temp(iexp,1)=max(inputs.exps.exp_data{iexp}(:,1));
    temp(iexp,2)=max(inputs.exps.exp_data{iexp}(:,2));
end
max_Nw=max(temp(:,1));
max_COD=max(temp(:,2));%max(max(cell2mat(dat.COD)));
%%

%% ====================================================================
% run optim to get confidence intervals alwasy same conditions
%%=====================================================================
inputs.nlpsol.nlpsolver       = 'local_solnp';
inputs.ivpsol.senssolver='fdsens5'%'cvodes'

% optimumn
count_t=ng;
for iexp = 1:inputs.exps.n_exp
    inputs.PEsol.local_theta_guess{iexp}=opt(count_t+[1:nl]);
    count_t=count_t+nl;
end
inputs.PEsol.global_theta_guess = opt(1:ng);
inputs.nlpsol.eSS.log_var=[1:size(opt,2)];

AMIGO_Prep(inputs)                                                     % Preparation of AMIGO toolbox
res = AMIGO_PE(inputs);     % Matlab structure with the calibration results

%% ====================================================================
% build table
%%====================================================================
bad_exp=[];
verybad_exp=[];
cc=0;
for ig=1:ng
    col1{ig}='Global to all edexperiments';
    col2{ig}=inputs.PEsol.id_global_theta(ig,:);
end

for iexp=1:inputs.exps.n_exp
    for il=1:nl
        col1{il+ng+cc}=[dat.info{iexp}];
        col2{il+ng+cc}=[inputs.PEsol.id_local_theta{1}(il,:)];
        %             colprod{il+ng+cc}=dat.infoProd{iexp};
        %             colproc{il+ng+cc}=dat.infoProc{iexp}
    end
    cc=cc+nl;
end

for iexp=1:inputs.exps.n_exp
    ind=([1:nl]+ng)+(iexp-1)*nl;
    for ii_c=ind;col_last{ii_c}='Confident result';end
    if sum(res.fit.rel_conf_interval(ind)>100)>0
        bad_exp=[bad_exp iexp];
        for ii_c=ind;
            if res.fit.rel_conf_interval(ii_c)>100;col_last{ii_c}='* More than 100% confidence region';end
        end
        disp(['*',dat.info{iexp}])
    end
    
    if  sum(res.fit.rel_conf_interval(ind)==0)>0.5 ||  sum(abs(imag(res.fit.rel_conf_interval(ind)))>0)>0.5
        verybad_exp=[verybad_exp iexp];
        for ii_c=ind;col_last{ii_c}='** No able to estimate confidence region';end
        disp(['**',dat.info{iexp}])
    end
end
bad_exp=[bad_exp 1e10];
verybad_exp=[verybad_exp 1e10];

T=table(col1',col2',res.fit.thetabest,res.fit.conf_interval',res.fit.rel_conf_interval',col_last','VariableNames',{'Experiment','Parameter','Value','Confidence_interval','Relative_confidence_interval','Notes'})
if size(inputs.pathd.results_folder,2)>30
    writetable(T,[inputs.pathd.results_folder,'.xlsx'],'Sheet',inputs.pathd.results_folder(1:30))
else
writetable(T,[inputs.pathd.results_folder,'.xlsx'],'Sheet',inputs.pathd.results_folder)
end


%% ====================================================================
% fig 1/2 noscaling/scaling
%%====================================================================
cols=4;
rows=ceil(inputs.exps.n_exp/cols);

bla1=figure
set(gcf,'OuterPosition',[998          91        1347        1320])
cont=1;
cont2=1;

for iexp=1:inputs.exps.n_exp
    sce(iexp,1)=str2num(dat.info{iexp}(6:7));
    vis(iexp,1)=str2num(dat.info{iexp}(end));
    
    hAx(iexp)=subplot(rows,cols,iexp);
    title(dat.info{iexp})
    %         if bad_exp(cont)==iexp
    %             title([dat.info{iexp},'*'])
    %             cont=cont+1;
    %         end
    %         if verybad_exp(cont2)==iexp
    %             title([dat.info{iexp},'**'])
    %             cont2=cont2+1;
    %         end
    yyaxis left
    plot(dat.ts{iexp}/60,inputs.exps.exp_data{iexp}(:,1),'s','MarkerFaceColor','b');hold on
    plot(res.sim.tsim{iexp}/60,res.sim.obs{iexp}(:,1),'b-','LineWidth',2)
    if iexp==13
        ylabel('Total Counts (log10 CFU/100mL)','FontSize',16,'FontWeight','bold');
    end
    
    yyaxis right
    plot(dat.ts{iexp}/60,inputs.exps.exp_data{iexp}(:,2),'o','MarkerFaceColor',[0.8500 0.3250 0.0980]);hold on
    plot(res.sim.tsim{iexp}/60,res.sim.states{iexp}(:,2),'-','LineWidth',2,'Color',[0.8500 0.3250 0.0980]);
    if iexp==16
        ylabel('Chemical Oxygen Demand, COD, (ppm)','FontSize',16,'FontWeight','bold','Rotation',270);
    end
    if iexp==28
        xlabel('Time (h)','FontSize',16,'FontWeight','bold')
    end
    %if iexp==inputs.exps.n_exp || iexp==inputs.exps.n_exp-1;xlabel('Time (h)','FontSize',fs);end
end
drawnow
if def==1
disp('mueve las labels de los ejes para ponerlas bonitas y pulsa enter')
pause
drawnow
end
hgsave([inputs.pathd.results_folder,'_noscaling'])
fig4tiff([inputs.pathd.results_folder,'_noscaling']);close

% with scaling
for iexp=1:inputs.exps.n_exp
    hAx(iexp)=subplot(rows,cols,iexp);
    yyaxis left
    ylim([0 max_Nw])
    yyaxis right
    ylim([0 max_COD])
end
drawnow
hgsave([inputs.pathd.results_folder])
fig4tiff([inputs.pathd.results_folder]); close


% with scaling

%% ====================================================================
% fig 3, 4, 5, 6 
%%====================================================================
m1=[1 0 0; 0 1 0; 0 0 1; 1 1 0; 1 0 1; 0 1 1; 0 0 0];
m2=0.75*m1;

% select parameters

nname=inputs.pathd.results_folder;

ind=find(res.fit.rel_conf_interval>100);
if size(ind,2)>0
    disp('---->  no reliable parameters')
    disp(ind)
    'do you want to continue? analysis will include this/these unconfident parameter(s)'
    %pause
end

clear newpar pg pl
pg=res.fit.thetabest(1);
pl{1}=log10(res.fit.thetabest(ng+1:2:end));
pl{2}=log10(res.fit.thetabest(ng+2:2:end));
%% =======================================
% A per case
%=======================================

figure
set(gcf,'OuterPosition',[1000          74        1484        1344])
for iexp=1:size(dat.info,2)
    if dat.info{iexp}(7)==','
        Percasenumb{iexp}=dat.info{iexp}(6);
        Percase{iexp}=['Case ',dat.info{iexp}(6)];
    else
        Percasenumb{iexp}=dat.info{iexp}(6:7);
    Percase{iexp}=['Case ',dat.info{iexp}(6:7)];
    end
end


scatterhist(pl{1},pl{2},'Direction','out','Group',Percase','Kernel','overlay','Marker','.','MarkerSize',30,'Color',[m1;m2],'PlotGroup','off');
xlabel('log10-K_{COD}')
ylabel('log10-K_X')

hold on
for iexp=1:inputs.exps.n_exp
    text(pl{1}(iexp),pl{2}(iexp),['$\,\,\,\textmd{',dat.infoProd{iexp},'}^{',Percasenumb{iexp},'.',dat.info{iexp}(end),'}$'],'interpreter','latex'), hold on
    cc=cc+nl;
end
title(['Water contamination (Transfer rates) grouping by cases'])

if def==1
disp('mueve las labels de los ejes para ponerlas bonitas y pulsa enter')
pause
drawnow
end
hgsave([nname,'_PerCase'])
fig4tiff([nname,'_PerCase']);close


%% =======================================
% B per Product
%=======================================
figure
set(gcf,'OuterPosition',[1000          74        1484        1344])
scatterhist(pl{1},pl{2},'Direction','out','Group',dat.infoProd','Kernel','on','Marker','.','MarkerSize',30,'Color',[m1;m2]);
xlabel('log10-K_{COD}')
ylabel('log10-K_X')
hold on
for iexp=1:inputs.exps.n_exp
    text(pl{1}(iexp),pl{2}(iexp),['$\,\,\,\textmd{',dat.infoProd{iexp},'}^{',Percasenumb{iexp},'.',dat.info{iexp}(end),'}$'],'interpreter','latex'), hold on
    cc=cc+nl;
end
title(['Water contamination (Transfer rates) grouping by products'])
if def==1
disp('mueve las labels de los ejes para ponerlas bonitas y pulsa enter')
pause
drawnow
end
hgsave([nname,'_PerProduc'])
fig4tiff([nname,'_PerProduc']);close


%% =======================================
% C per Operation
%=======================================
figure
set(gcf,'OuterPosition',[1000          74        1484        1344])
scatterhist(pl{1},pl{2},'Direction','out','Group',dat.infoProc','Kernel','on','Marker','.','MarkerSize',30,'Color',[m1;m2]);
xlabel('log10-K_{COD}')
ylabel('log10-K_X')
title('remmber no conf interval info here!')
hold on
for iexp=1:inputs.exps.n_exp
    text(pl{1}(iexp),pl{2}(iexp),['$\,\,\,\textmd{',dat.infoProd{iexp},'}^{',Percasenumb{iexp},'.',dat.info{iexp}(end),'}$'],'interpreter','latex'), hold on
    cc=cc+nl;
end

title(['Water contamination (Transfer rates) grouping by Operation'])
if def==1
disp('mueve las labels de los ejes para ponerlas bonitas y pulsa enter')
pause
drawnow
end
hgsave([nname,'_PerOperation'])
fig4tiff([nname,'_PerOperation']);close

%% =======================================
% D per sector
%=======================================
figure
set(gcf,'OuterPosition',[1000          74        1484        1344])
blu=scatterhist(pl{1},pl{2},'Direction','out','Group',dat.infoCat','Kernel','on','Marker','.','MarkerSize',30,'Color',[m1;m2]);
xlabel('log10-K_{COD}')
ylabel('log10-K_X')

hold on
for iexp=1:inputs.exps.n_exp
    text(pl{1}(iexp),pl{2}(iexp),['$\,\,\,\textmd{',dat.infoProd{iexp},'}^{',Percasenumb{iexp},'.',dat.info{iexp}(end),'}$'],'interpreter','latex'), hold on
    cc=cc+nl;
end


title(['Water contamination (Transfer rates) grouping by Sector'])
if def==1
disp('mueve las labels de los ejes para ponerlas bonitas y pulsa enter')
pause
drawnow
end
hgsave([nname,'_PerSector'])
fig4tiff([nname,'_PerSector']);close


%distFig






%% save data dist figures
save(inputs.pathd.results_folder)


blas=dir('*_parameters.fig');
for i_blas=1:size(blas,1)
    openfig([blas(i_blas).folder,'/',blas(i_blas).name])
end



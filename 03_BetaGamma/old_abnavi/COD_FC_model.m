function [XX,JJ] = COD_FC_model(beta,gam)

MW_FC    = 52.45;         % mol/g (molecular weight of FC)
MW_O2    = 32;            % mol/g (molecular weight of O2)
lambda   = 1.7e-3;        % 1/min (from paper)
Conv_FC  = MW_FC/1.0e3;   % Conversion (free chloride) from micromolar to mg/L
Conv_COD = MW_O2/1.0e3;   % Conversion (COD) from micromolar to mg/L
expData.ts = [0.0, 2.0, 4.0, 6.0, 8.0, 10.0, 12.5, 15.0, 17.0, 19.0, 21.0, 23.0, 25.0, 27.5, 30.0, 32.0, 34.0, 36.0, 38.0, 40.0];
% Free chloride [mg/L]. Originally micromolar. 
expData.FC  = Conv_FC*[230.0, 192.0, 128.0, 70.0, 30.0, 8.0, 266.0, 174.0, 82.0, 36.0, 12.0, 4.0, 2.0, 188.0, 98.0, 28.0, 10.0, 4.0, 0.0, 0.0];
expData.DFC = max(expData.FC); %max(expData.FC)-min(expData.FC);
% COD [mg/L]. Originally micromolar. 
expData.COD  = Conv_COD*[1025.6, 2948.7, 5000.0, 6923.1, 9102.6, 10897.4, 10000.0, 10897.4, 12692.3, 13974.3, 16153.8, 17820.5, 19487.2, 17051.3, 17692.3, 19359.0, 20769.2, 22051.3, 23461.5, 24743.6];
expData.DCOD = max(expData.COD);%max(expData.COD)-min(expData.COD);



p.Fw=0.51;
p.V=20.0;
p.D=p.Fw/p.V;
p.lambda=1.7e-3;
p.bet=beta;
p.gam=gam;


Fil     = 500.0;            % g/min. Input flow of iceberg lettuce (from paper)
Frl     = 10.0;             % g/min. Input flow of red lettuce (from paper)
tau  = 0.5;
Mil      = Fil*tau;   % g of ice lettuce (from paper)
Mrl      = Frl*tau;   % g of red lettuce (from paper)

p.Kcod=4.94;

tt= [0:0.1:40];

tFCinj = [10.0, 25.0 1e100];   % min. Time at which the FC is added

tProd = [0.0 15 30 1e100];
tProdEND = [tProd+10.0 ];
TIME=union(tt,tFCinj(1:end-1));


TIME=union(tt,expData.ts);
TIME=union(TIME,tProd(1:end-1));

TIME=union(TIME,tProdEND(1:end-1));

x0=[12.0635 0];
XX=x0;
contFC=1;
contFCEND=1;
contProd=1;
p.Mil=0;p.Mrl=0;p.FCinj=0;
contProdEND=1;
for ii=2:size(TIME,2);


    p.FCinj=0;
    if TIME(ii-1)==tFCinj(contFC);
        x0(1)=x0(1)+430*5/60;
        contFC=contFC+1;
    end
%     if TIME(ii)==tFCinjEND(contFCEND);
%         contFC=contFC+1;
%         contFCEND=contFCEND+1;
%     end
    


    if TIME(ii-1)==tProd(contProd);
        p.Mil=Mil;
        p.Mrl=Mrl;
%         contProd=contProd+1;
%     else
%         p.FCinj=0;
    end
    
    if TIME(ii)==tProdEND(contProdEND)
            p.Mil=0;
    p.Mrl=0;
        contProdEND=contProdEND+1;
        contProd=contProd+1;
    end
% [TIME(ii-1) p.Mil]
    [t,x]=ode15s(@theODE,[TIME(ii-1),TIME(ii)],x0,[],p);
    x0=x(end,:);
    XX=[XX;x0];
end

subplot(211),plot(TIME,XX(:,1));title('FC')
hold on;
plot(expData.ts,expData.FC,'*');
hold off
subplot(212),plot(TIME,XX(:,2));title('COD')
hold on;
plot(expData.ts,expData.COD,'*');
hold off
ind=[];
for bb=expData.ts
    ind=[ind find(TIME==bb)];
end


eFC=(expData.FC-XX(ind,1)')./max(expData.FC);
eCOD=(expData.COD-XX(ind,2)')./max(expData.COD);

JJ=sum(eFC.^2)+sum(eCOD.^2);
title(JJ)
drawnow
    function dx=theODE(t,x,p);
        FC=x(1);COD=x(2);
        dFC = -p.D*FC-p.lambda*FC-p.bet*COD*FC+p.FCinj/p.V;
        dCOD  = -p.D*COD +p.Kcod*(p.Mil+p.Mrl)/p.V-p.gam*p.bet*COD*FC;
%  plot(t,p.Mil,'*')
% drawnow
%  hold on
        
        dx=[dFC;dCOD];
    end
end


function ms=AMIGO_gen_obs_2_pulses(y,inputs,par,iexp)
	XX =y(:,1);
	COD=y(:,2);
	FC =y(:,3);
	MM     =par(1);
	VV     =par(2);
	lamb   =par(3);
	Kcod   =par(4);
	Kx     =par(5);
	alpha  =par(6);
	km     =par(7);
	beta   =par(8);
	gamm   =par(9);
	pH     =par(10);
	TT     =par(11);
	e_Kcod =par(12);
	e_Kx   =par(13);
	e_alpha=par(14);
	e_km   =par(15);
	e_beta =par(16);
	e_gamm =par(17);
 

switch iexp

case 1
log10CFUs100ml=log10(0.1*XX+1);
yCOD=COD                      ;
yFC=FC                        ;
ms(:,1)=log10CFUs100ml;ms(:,2)=yCOD          ;ms(:,3)=yFC           ;
end

return
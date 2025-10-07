function ms=AMIGO_gen_obs_problem(y,inputs,par,iexp)
	FC =y(:,1);
	COD=y(:,2);
	DD     =par(1);
	pLambda=par(2);
	pbeta  =par(3);
	pgamm  =par(4);
	pINJ   =par(5);
	pKcod  =par(6);
	pMil   =par(7);
	pMrl   =par(8);
	pV     =par(9);
 

switch iexp

case 1
yFC=FC  ;
yCOD=COD;
ms(:,1)=yFC ;ms(:,2)=yCOD;
end

return
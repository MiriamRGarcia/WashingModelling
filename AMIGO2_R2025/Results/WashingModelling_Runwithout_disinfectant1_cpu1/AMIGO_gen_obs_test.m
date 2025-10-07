function ms=AMIGO_gen_obs_test(y,inputs,par,iexp)
	Xw =y(:,1);
	COD=y(:,2);
	DD   =par(1);
	K_X  =par(2);
	K_COD=par(3);
 

switch iexp

case 1
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 2
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 3
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 4
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 5
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 6
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 7
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 8
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 9
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 10
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 11
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 12
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 13
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 14
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 15
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 16
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 17
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 18
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 19
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 20
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 21
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 22
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 23
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 24
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 25
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 26
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 27
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;

case 28
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;
end

return
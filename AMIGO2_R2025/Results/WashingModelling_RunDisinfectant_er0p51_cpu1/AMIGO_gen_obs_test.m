function ms=AMIGO_gen_obs_test(y,inputs,par,iexp)
	Xw =y(:,1);
	COD=y(:,2);
	XwL=y(:,3);
	DD    =par(1);
	K_X   =par(2);
	K_COD =par(3);
	K_XL  =par(4);
	Km    =par(5);
	KmL   =par(6);
	alpha =par(7);
	alphaL=par(8);
	nn    =par(9);
	nL    =par(10);
 

switch iexp

case 1
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 2
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 3
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 4
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 5
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 6
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 7
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 8
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 9
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 10
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 11
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 12
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 13
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 14
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 15
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 16
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 17
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 18
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 19
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 20
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 21
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 22
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 23
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 24
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 25
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 26
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 27
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 28
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 29
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 30
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 31
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 32
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 33
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 34
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 35
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 36
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 37
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 38
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 39
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 40
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 41
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 42
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 43
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 44
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 45
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 46
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 47
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 48
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 49
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 50
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 51
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 52
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 53
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;

case 54
log10CFUs=log10(0.1*Xw+1);
yCOD=COD                 ;
log10Lis=log10(0.1*XwL+1);
ms(:,1)=log10CFUs;ms(:,2)=yCOD     ;ms(:,3)=log10Lis ;
end

return
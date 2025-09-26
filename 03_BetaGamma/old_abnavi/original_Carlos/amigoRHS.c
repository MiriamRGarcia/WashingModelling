#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include "mex.h"

#include "time.h"

#define yStat(i) ( NV_DATA_S(y)[i-1] )
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	double pAlpha_m	= (*amigo_model).pars[0];
	double pK_m	= (*amigo_model).pars[1];
	double pFw	= (*amigo_model).pars[2];
	double pV	= (*amigo_model).pars[3];
	double pMil	= (*amigo_model).pars[4];
	double pMrl	= (*amigo_model).pars[5];
	double pLambda	= (*amigo_model).pars[6];
	double pKfc	= (*amigo_model).pars[7];
	double pKco	= (*amigo_model).pars[8];
	double pKilw	= (*amigo_model).pars[9];
	double pKwil	= (*amigo_model).pars[10];
	double pKrlw	= (*amigo_model).pars[11];
	double pKwrl	= (*amigo_model).pars[12];
	double pFC_in	= (*amigo_model).pars[13];
	double pCOD_in	= (*amigo_model).pars[14];
	double pXw_in	= (*amigo_model).pars[15];
	double pXil_in	= (*amigo_model).pars[16];
	double pXrl_in	= (*amigo_model).pars[17];
	double pKilo	= (*amigo_model).pars[18];
	double pKrlo	= (*amigo_model).pars[19];
	double pFil	= (*amigo_model).pars[20];
	double pFrl	= (*amigo_model).pars[21];
	double pn_COD	= (*amigo_model).pars[22];
	double pvA2	= (*amigo_model).pars[23];
	double sFCinj;
	double vAlpha;
	double vAlpha2;
	double vFC;
	double vCOD;
	double vCODb;
	double vXw;
	double vXil;
	double vXrl;
	double vdFC;
	double vdCOD;
	double vdXw;
	double vdXil;
	double vdXrl;

	/* STIMULUS */
	sFCinj	= (*amigo_model).controls_v[0][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[0][(*amigo_model).index_t_stim];
	vFC  = yStat(1) ;
	vCOD = yStat(2) ;
	vXw  = yStat(3) ;
	vXil = yStat(4) ;
	vXrl = yStat(5) ;

	/* COMPUTATION OF ALPHA */
	if(vCOD<0){
		vCODb=0;
	}
	else{
		vCODb=vCOD;
	}
	vAlpha = pow(pAlpha_m,pn_COD)/(pow(pK_m,pn_COD) + pow(vCODb,pn_COD));
	vAlpha2 = pvA2*vAlpha;

	/* Intermediate variable for the ODEs */
	vdFC = pFw/pV*(pFC_in-vFC) - pLambda*vFC - pKfc*vCOD*vFC + sFCinj/pV;
	vdCOD = pFw/pV*(pCOD_in-vCOD) + pMil/pV*pKilo  + pMrl/pV*pKrlo - pKco*vCOD*vFC;
	vdXw = pFw/pV*(pXw_in-vXw) - vAlpha*vXw*vFC + (pMil/pV)*pKilw*vXil + (pMrl/pV)*pKrlw*vXrl - (pKwil+pKwrl)*vXw;
	vdXil = pFil/pMil*(pXil_in-vXil) - pKilw*vXil + pKwil*(pV/pMil)*vXw - vAlpha2*vXil*vFC;
	vdXrl = pFrl/pMrl*(pXrl_in-vXrl) - pKrlw*vXrl + pKwrl*(pV/pMrl)*vXw - vAlpha2*vXrl*vFC;

	/* ODEs OUTPUT */
	Ith(ydot,0) = vdFC;
	Ith(ydot,1) = vdCOD;
	Ith(ydot,2) = vdXw;
	Ith(ydot,3) = vdXil;
	Ith(ydot,4) = vdXrl;

	return(0);

}

int amigoJAC(int N, realtype t, N_Vector y, N_Vector fy, DlsMat J, void *data, N_Vector tmp1, N_Vector tmp2, N_Vector tmp3){
	 AMIGO_model* amigo_model=(AMIGO_model*)data;

	return(0);

}

int amigoSensRHS(int Ns, realtype t, N_Vector y, N_Vector ydot, int iS, N_Vector yS, N_Vector ySdot, void *data, N_Vector tmp1, N_Vector tmp2){
	 AMIGO_model* amigo_model=(AMIGO_model*)data;

	 return(0);
}


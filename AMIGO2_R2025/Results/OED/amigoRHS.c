#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include <amigoSensRHS.h>

#include <amigo_terminate.h>


	/* *** Definition of the states *** */

#define	XX  Ith(y,0)
#define	COD Ith(y,1)
#define	FC  Ith(y,2)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dXX  Ith(ydot,0)
#define	dCOD Ith(ydot,1)
#define	dFC  Ith(ydot,2)

	/* *** Definition of the parameters *** */

#define	MM      (*amigo_model).pars[0]
#define	VV      (*amigo_model).pars[1]
#define	lamb    (*amigo_model).pars[2]
#define	Kcod    (*amigo_model).pars[3]
#define	Kx      (*amigo_model).pars[4]
#define	alpha   (*amigo_model).pars[5]
#define	km      (*amigo_model).pars[6]
#define	beta    (*amigo_model).pars[7]
#define	gamm    (*amigo_model).pars[8]
#define	pH      (*amigo_model).pars[9]
#define	TT      (*amigo_model).pars[10]
#define	e_Kcod  (*amigo_model).pars[11]
#define	e_Kx    (*amigo_model).pars[12]
#define	e_alpha (*amigo_model).pars[13]
#define	e_km    (*amigo_model).pars[14]
#define	e_beta  (*amigo_model).pars[15]
#define	e_gamm  (*amigo_model).pars[16]
#define Fin	((*amigo_model).controls_v[0][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[0][(*amigo_model).index_t_stim])
#define DD 	((*amigo_model).controls_v[1][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[1][(*amigo_model).index_t_stim])

	/* *** Definition of the algebraic variables *** */

	double	HOCl;
/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	HOCl=FC/(1.0+(pow(10.0,-((3000.0/(TT+273.15)))+0.0253*(TT+273.15)-10.0686)/pow(10.0,-pH)));
	dXX=DD*(0-XX)+(MM/VV)*Kx*e_Kx-alpha*e_alpha*(km*e_km/(km*e_km+COD))*HOCl*XX;
	dCOD=DD*(0-COD)+(MM/VV)*Kcod*e_Kcod-gamm*e_gamm*beta*e_beta*COD*FC;
	dFC=DD*(0-FC)+1000*Fin/VV-beta*e_beta*COD*FC-lamb*FC;

	return(0);

}


/* Jacobian of the system (dfdx)*/
int amigoJAC(long int N, realtype t, N_Vector y, N_Vector fy, DlsMat J, void *user_data, N_Vector tmp1, N_Vector tmp2, N_Vector tmp3){
	AMIGO_model* amigo_model=(AMIGO_model*)user_data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	return(0);
}

/* R.H.S of the sensitivity dsi/dt = (df/dx)*si + df/dp_i */
int amigoSensRHS(int Ns, realtype t, N_Vector y, N_Vector ydot, int iS, N_Vector yS, N_Vector ySdot, void *data, N_Vector tmp1, N_Vector tmp2){
	AMIGO_model* amigo_model=(AMIGO_model*)data;

	return(0);

}
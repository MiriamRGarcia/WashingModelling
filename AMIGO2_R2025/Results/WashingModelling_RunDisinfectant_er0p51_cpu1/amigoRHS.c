#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include <amigoSensRHS.h>

#include <amigo_terminate.h>


	/* *** Definition of the states *** */

#define	Xw  Ith(y,0)
#define	COD Ith(y,1)
#define	XwL Ith(y,2)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dXw  Ith(ydot,0)
#define	dCOD Ith(ydot,1)
#define	dXwL Ith(ydot,2)

	/* *** Definition of the parameters *** */

#define	DD     (*amigo_model).pars[0]
#define	K_X    (*amigo_model).pars[1]
#define	K_COD  (*amigo_model).pars[2]
#define	K_XL   (*amigo_model).pars[3]
#define	Km     (*amigo_model).pars[4]
#define	KmL    (*amigo_model).pars[5]
#define	alpha  (*amigo_model).pars[6]
#define	alphaL (*amigo_model).pars[7]
#define	nn     (*amigo_model).pars[8]
#define	nL     (*amigo_model).pars[9]
#define FC	((*amigo_model).controls_v[0][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[0][(*amigo_model).index_t_stim])
#define pH	((*amigo_model).controls_v[1][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[1][(*amigo_model).index_t_stim])
#define TT	((*amigo_model).controls_v[2][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[2][(*amigo_model).index_t_stim])
#define MM	((*amigo_model).controls_v[3][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[3][(*amigo_model).index_t_stim])
#define VV	((*amigo_model).controls_v[4][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[4][(*amigo_model).index_t_stim])

	/* *** Definition of the algebraic variables *** */

	double	HOCl;
/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	HOCl=FC/(1.0+(pow(10.0,-((3000.0/(TT+273.15)))+0.0253*(TT+273.15)-10.0686)/pow(10.0,-pH)));
	dXw=-DD*Xw+(MM/VV)*K_X-alpha*(pow(Km,nn)/(pow(COD,nn)+pow(Km,nn)))*Xw*HOCl;
	dXwL=-DD*XwL+(MM/VV)*K_XL-alphaL*(pow(Km,nn)/(pow(COD,nn)+pow(Km,nn)))*XwL*HOCl;
	dCOD=-DD*COD+(MM/VV)*K_COD;

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
#include <amigoRHS.h>

#include <math.h>

#include <amigoJAC.h>

#include <amigoSensRHS.h>

#include <amigo_terminate.h>


	/* *** Definition of the states *** */

#define	FC  Ith(y,0)
#define	COD Ith(y,1)
#define iexp amigo_model->exp_num

	/* *** Definition of the sates derivative *** */

#define	dFC  Ith(ydot,0)
#define	dCOD Ith(ydot,1)

	/* *** Definition of the parameters *** */

#define	DD      (*amigo_model).pars[0]
#define	pLambda (*amigo_model).pars[1]
#define	pbeta   (*amigo_model).pars[2]
#define	pgamm   (*amigo_model).pars[3]
#define	pINJ    (*amigo_model).pars[4]
#define	pKcod   (*amigo_model).pars[5]
#define	pMil    (*amigo_model).pars[6]
#define	pMrl    (*amigo_model).pars[7]
#define	pV      (*amigo_model).pars[8]
#define U1	((*amigo_model).controls_v[0][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[0][(*amigo_model).index_t_stim])
#define U2	((*amigo_model).controls_v[1][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[1][(*amigo_model).index_t_stim])
#define U3	((*amigo_model).controls_v[2][(*amigo_model).index_t_stim]+(t-(*amigo_model).tlast)*(*amigo_model).slope[2][(*amigo_model).index_t_stim])

	/* *** Definition of the algebraic variables *** */

/* Right hand side of the system (f(t,x,p))*/
int amigoRHS(realtype t, N_Vector y, N_Vector ydot, void *data){
	AMIGO_model* amigo_model=(AMIGO_model*)data;
	ctrlcCheckPoint(__FILE__, __LINE__);


	/* *** Equations *** */

	dFC=-DD*FC-pLambda*FC-pbeta*COD*FC+U1*pINJ/pV;
	dCOD=-DD*COD+(U2*pMil/pV+U3*pMrl/pV)*pKcod-pgamm*pbeta*COD*FC;

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
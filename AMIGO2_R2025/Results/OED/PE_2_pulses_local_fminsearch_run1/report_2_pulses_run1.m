   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2025 [Jan 2025]    *
   *********************************** 

Date: 07-Oct-2025
Problem folder:	 Results/OED
Results folder in problem folder:	 Results/OED/PE_2_pulses_local_fminsearch_run1 


-------------------------------
Optimisation related active settings
-------------------------------
	Summary of selected local solver (fminsearch) options:
	maxeval: 500,
	maxtime: 60

		>Bounds on the unknowns:

		v_guess(1)=0.794328;  v_min(1)=0.794328; v_max(1)=0.794328;
		v_guess(2)=3.162278;  v_min(2)=3.162278; v_max(2)=3.162278;
		v_guess(3)=7.660000;  v_min(3)=7.660000; v_max(3)=7.660000;
		v_guess(4)=1.391800;  v_min(4)=1.391800; v_max(4)=1.391800;
		v_guess(5)=7.220000;  v_min(5)=7.220000; v_max(5)=7.220000;
		v_guess(6)=2.760000;  v_min(6)=2.760000; v_max(6)=2.760000;



-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-05
AbsTol: 1e-07
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


---------------------------------------------------
Local sensitivity problem related active settings
---------------------------------------------------
senssolver: cvodes
ivp_RelTol: 1e-05
ivp_AbsTol: 1e-07
sensmex: cvodesg_2_pulses
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 3


--> Number of model parameters: 17

--> Vector of parameters (nominal values):

	par0=[  10.00000  10000.00000     0.00170     0.79433     3.16228     7.66000     1.39180     7.22000     2.76000     7.50000    15.00000   100.00000  10000000.00000     1.00000  1000.00000     0.00010     1.00000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[0.000e+00  0.000e+00  0.000e+00  ]

-->Final process time for each experiment: 
		Experiment 1: 	 480.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 8: 	 1.500e+01  7.500e+01  1.350e+02  1.950e+02  2.550e+02  3.150e+02  3.750e+02  4.350e+02  

-->Number of manipulable (control, stimulus, input) variables: 2


-->Number of observables:
	Experiment 1: 3

-->Observables:
		Experiment 1:
			log10CFUs100ml=log10(0.1*XX+1)
			yCOD=COD                      
			yFC=FC                        

-->Number of sampling times for each experiment:
		Experiment 1: 	 8

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[  15.000    75.000   135.000   195.000   255.000   315.000   375.000   435.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		1.56551  0.979784  11.5478
		1.73418  2.96615  7.7718
		1.93229  4.31117  4.89535
		2.15743  5.78312  2.90357
		2.4131  7.48653  1.60766
		2.70293  9.37445  0.823298
		3.02872  11.3314  0.387741
		1.57761  10.8904  11.3009
		];


-->Noise type:homo_var

		Error data 1: 
		inputs.exps.error_data{1}=[
		0.5  10  0.1
		0.5  10  0.1
		0.5  10  0.1
		0.5  10  0.1
		0.5  10  0.1
		0.5  10  0.1
		0.5  10  0.1
		0.5  10  0.1
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: 0.000248 %	 max error: 0.000709 %
		 Observable 2 --> mean error: 0.000214 %	 max error: 0.000562 %
		 Observable 3 --> mean error: 0.001609 %	 max error: 0.004559 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 0.000019 max data: 3.028720
		 Observable 2 -->  max residual: 0.000064 max data: 11.331384
		 Observable 3 -->  max residual: 0.000065 max data: 11.547814

--------------------------------------------------------------------------	   

>>>> Best objective function: 0.000001 
	   

>>>> Computational cost: 0.450000 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	Kcod    : 7.9433e-01  +-  2.5259e-01 (    31.8%); 
	Kx      : 3.1623e+00  +-  5.6676e+00 (     179%); 
	alpha   : 7.6600e+00  +-  4.3322e+00 (    56.6%); 
	km      : 1.3918e+00  +-  4.9212e-01 (    35.4%); 
	beta    : 7.2200e+00  +-  3.5739e+00 (    49.5%); 
	gamm    : 2.7600e+00  +-  8.7031e-01 (    31.5%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 1.840236e-01	 5.478171e-01	 3.177942e-01	 -8.777463e-01	 4.686838e-01
	 1.840236e-01	 1.000000e+00	 -4.052464e-01	 -1.081396e-01	 -4.994116e-01	 -5.576075e-01
	 5.478171e-01	 -4.052464e-01	 1.000000e+00	 1.121911e-01	 -4.960105e-01	 2.771797e-01
	 3.177942e-01	 -1.081396e-01	 1.121911e-01	 1.000000e+00	 -1.729962e-01	 3.822858e-01
	 -8.777463e-01	 -4.994116e-01	 -4.960105e-01	 -1.729962e-01	 1.000000e+00	 -3.591584e-02
	 4.686838e-01	 -5.576075e-01	 2.771797e-01	 3.822858e-01	 -3.591584e-02	 1.000000e+00

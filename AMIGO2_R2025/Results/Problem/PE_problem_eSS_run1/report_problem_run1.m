   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2025 [Jan 2025]    *
   *********************************** 

Date: 07-Oct-2025
Problem folder:	 Results/Problem
Results folder in problem folder:	 Results/Problem/PE_problem_eSS_run1 


-------------------------------
Optimisation related active settings
-------------------------------


------> Global Optimizer: Enhanced SCATTER SEARCH for parameter estimation

		>Summary of selected eSS options: 
ess_options.
	dim_refset:	'auto'
	inter_save:	0
	iterprint:	1
	local:	(1x1 struct)
	log_var:	(1x5 double)
	maxeval:	10000000
	maxtime:	20
	ndiverse:	'auto'

		  default options are used. 


		>Bounds on the unknowns:

		v_guess(1)=0.510000;  v_min(1)=0.000000; v_max(1)=1.000000;
		v_guess(2)=0.000781;  v_min(2)=0.000000; v_max(2)=1.000000;
		v_guess(3)=8.160000;  v_min(3)=0.000000; v_max(3)=10.000000;
		v_guess(4)=430.000000;  v_min(4)=0.000000; v_max(4)=100000.000000;
		v_guess(5)=4.940000;  v_min(5)=0.000000; v_max(5)=100000.000000;



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
sensmex: cvodesg_problem
MaxStepSize: Inf
MaxNumberOfSteps: 1e+06


-------------------------------
   Model related information
-------------------------------

--> Number of states: 2


--> Number of model parameters: 9

--> Vector of parameters (nominal values):

	par0=[   0.02550     0.00170     0.00078     8.16000   430.00000     4.94000     0.25000     0.00500    20.00000  ]


-------------------------------------------
  Experimental scheme related information
-------------------------------------------


-->Number of experiments: 1


-->Initial conditions for each experiment:
		Experiment 1: 
			exp_y0=[1.206e+01  3.282e+01  ]

-->Final process time for each experiment: 
		Experiment 1: 	 40.000000


-->Sampling times for each experiment: 
		Experiment 1: 	 		Experiment 110: 	 		Experiment 95: 	 		Experiment 115: 	 		Experiment 58: 	 		Experiment 32: 	 		Experiment 37: 	 		Experiment 105: 	 		Experiment 32: 	 		Experiment 92: 	 		Experiment 116: 	 		Experiment 20: 	 0.000e+00  2.000e+00  4.000e+00  6.000e+00  8.000e+00  1.000e+01  1.250e+01  1.500e+01  1.700e+01  1.900e+01  2.100e+01  2.300e+01  2.500e+01  2.750e+01  3.000e+01  3.200e+01  3.400e+01  3.600e+01  3.800e+01  4.000e+01  

-->Number of manipulable (control, stimulus, input) variables: 3


-->Input values/temporal elements for Experiment 1:
		step interpolation is being used.
			Control values:
			Input 1:	  0.0000	  1.0000	  0.0000	  0.0000	  1.0000	  0.0000	  0.0000	  0.0000				Input 2:	  1.0000	  0.0000	  0.0000	  1.0000	  0.0000	  0.0000	  1.0000	  0.0000				Input 3:	  1.0000	  0.0000	  0.0000	  1.0000	  0.0000	  0.0000	  1.0000	  0.0000	
			Control switching times: 	  0.0000	 10.0000	 10.0833	 15.0000	 25.0000	 25.0833	 30.0000	 40.0000	 40.0000


-->Number of observables:
	Experiment 1: 2

-->Observables:
		Experiment 1:
			yFC=FC  
			yCOD=COD

-->Number of sampling times for each experiment:
		Experiment 1: 	 20

-->Sampling times for each experiment:
		Experiment 1, 
			t_s=[   0.000     2.000     4.000     6.000     8.000    10.000    12.500    15.000    17.000    19.000    21.000    23.000    25.000    27.500    30.000    32.000    34.000    36.000    38.000    40.000  ]


--------------------------------------------------------------------------

-->Experimental data for each experiment:
		
Experiment 1: 
		inputs.exp_data{1}=[
		12.0635  32.8192
		10.0704  94.3584
		6.7136  160
		3.6715  221.539
		1.5735  291.283
		0.4196  348.717
		13.9517  320
		9.1263  348.717
		4.3009  406.154
		1.8882  447.178
		0.6294  516.922
		0.2098  570.256
		0.1049  623.59
		9.8606  545.642
		5.1401  566.154
		1.4686  619.488
		0.5245  664.614
		0.2098  705.642
		0  750.768
		0  791.795
		];


-->Noise type:homo_var

		Error data 1: 
		inputs.exps.error_data{1}=[
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		0.1  10
		];



-------------------------------------------------------------------------------------------
>>>>    Mean / Maximum value of the residuals in percentage (100*(data-model)/data):

		Experiment 1 : 
		 Observable 1 --> mean error: Inf %	 max error: Inf %
		 Observable 2 --> mean error: 11.750115 %	 max error: 34.590443 %

--------------------------------------------------------------------------

--------------------------------------------------------------------
>>>>  Maximum absolute value of the residuals (data-model):

		Experiment 1 : 
		 Observable 1 -->  max residual: 1.724962 max data: 13.951700
		 Observable 2 -->  max residual: 93.414429 max data: 791.795200

--------------------------------------------------------------------------	   

>>>> Best objective function: 1450.808780 
	   

>>>> Computational cost: 20.618725 s
> 100.00% of successful simulationn
> 100.00% of successful sensitivity calculations


>>> Best values found and the corresponding asymptotic confidence intervals



>>> Estimated global parameters: 

	DD      : 3.3294e-02  +-  2.4214e-03 (    7.27%); 
	pbeta   : 7.2236e-04  +-  2.0940e-05 (     2.9%); 
	pgamm   : 2.7638e+00  +-  5.9126e-01 (    21.4%); 
	pINJ    : 7.5822e+03  +-  1.7791e+02 (    2.35%); 
	pKcod   : 4.0422e+03  +-  9.8736e+01 (    2.44%); 


>>> Correlation matrix for the global unknowns:

	 1.000000e+00	 -6.961780e-01	 -6.471612e-01	 -2.314732e-01	 2.801808e-01
	 -6.961780e-01	 1.000000e+00	 4.174189e-01	 7.310723e-01	 -2.561309e-01
	 -6.471612e-01	 4.174189e-01	 1.000000e+00	 1.194671e-01	 5.023110e-01
	 -2.314732e-01	 7.310723e-01	 1.194671e-01	 1.000000e+00	 1.748436e-02
	 2.801808e-01	 -2.561309e-01	 5.023110e-01	 1.748436e-02	 1.000000e+00

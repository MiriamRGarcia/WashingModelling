   ***********************************
   *    AMIGO2, Copyright @CSIC      *
   *    AMIGO2_R2025 [Jan 2025]    *
   *********************************** 

Date: 07-Oct-2025
Problem folder:	 Results/OED
Results folder in problem folder:	 Results/OED/SObs_2_pulses_run1 


-----------------------------------------------
 Initial value problem related active settings
-----------------------------------------------
ivpsolver: cvodes
RelTol: 1e-05
AbsTol: 1e-07
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

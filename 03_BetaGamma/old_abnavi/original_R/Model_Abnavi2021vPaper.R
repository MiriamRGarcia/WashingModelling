# The Washtop modeling group (2024/03/03)
#
# Main file to simulate the first scenario
# described in:
#   Abnavi, M. D., Kothapalli C.R., Munther, D., Srinivasan, P. (2021). 
#   "Chlorine inactivation of Escherichia coli O157:H7 in fresh produce wash process: Effectiveness and modeling." 
#   International Journal of Food Microbiology 356:109364.

# In this version, the complete model (taking into account the different produces) is considered.
# The parameters used were the previously estimated from the experimental data in 
# "Data extraction RQ1a and RQ2a_Step 2_17032023.xlsx".

# Solutions are stored in SSol as follows:
#  SSol[,1]= FC    ; [mg/L] Free Chloride 
#  SSol[,2]= COD   ; [mg/L] Chemical oxygen demand 
#  SSol[,3]= Xw    ; [CFU/mL] Concentration of bacteria in water 
#  SSol[,4]= Xil   ; [CFU/g] Concentration of bacteria in iceberg lettuce 
#  SSol[,5]= Xrl   ; [CFU/g] Concentration of bacteria in red lettuce 
#
# Also, the concentrations of Xw and Xil  were stored apart in log10 scale as
#  logxw[]= Log10(Xw)
#  logxil[]= Log10(Xil)


# Load the library for the numerical solution of ordinary differential equations (ODEs)
library(deSolve)

#___________________ PARAMETERS ___________________________________________________
# Injection of Free Chloride
dtinj  <- 5.0/60.0        # [min] Duration of the FC injection
tFCinj <- c(10.0, 25.0)   # [min] Time at which the FC is added 

# Addition of iceberg and red lettuce. They are added five minutes after the FC is injected
Frl     <- 10.0               # [g/min] Input flow of red lettuce 
Fil     <- 500.0              # [g/min] Input flow of iceberg lettuce 
tFpin_s <- c(0.0, tFCinj+5.0) # [min] Time at which the lettuce is added 
tFpin_e <- tFpin_s+10.0       # [min] Time at which the lettuce addition stops 

# Estimated
Kfc   <- 0.00078145           # [L/(min·mg-COD)] Reaction rate constant for the reaction of FC and organic matter in the Fc's eq.
Kco   <- 0.006567             # [L/(min·mg-FC)] Reaction rate constant for the reaction of FC and organic matter in COD's  eq.
Kilo  <- 4.9368               # [mg-COD/(g-iceberg lettuce·min)] Rate at which COD is transferred from the
#    iceberg lettuce to the water. It includes the concentration of COD
#    in the produce (Kilo = Kil*CODil). If it is not included a new
#    equation for COD in the produce should be added 
FCinj <- 8602.2               # [mg/min] To be added during dtinj
Fw    <- 0.51374              # [L/min] Flow of water replenishment


# such that Hill's_(X_w)=vA2*Hill's_(Xil or Xrl)

# Assumed
Krlo <- Kilo                  # [mg-COD/(g-red lettuce·min)] Rate at which COD is transferred from the


# Known parameters (from paper)
V        <- 20.0          # [L] Tank volume 
Dwell_t  <- 0.5           # [min] Dwell time
Mil      <- Fil*Dwell_t   # [g] Mass of iceberg lettuce in the tank
Mrl      <- Frl*Dwell_t   # [g] Mass of red lettuce in the tank
MW_FC    <- 52.45         # [mol/g] Molecular weight of FC
MW_O2    <- 32            # [mol/g] Molecular weight of O2
lambda   <- 1.7e-3        # [1/min] Natural decay rate of FC in water
Conv_FC  <- MW_FC/1.0e3   # Conversion (free chloride) from micromolar to mg/L
Conv_COD <- MW_O2/1.0e3   # Conversion (COD) from micromolar to mg/L
FC_in    <- 0.0           # [mg/L] Concentration of FC entering the system with the input flow of water
COD_in   <- 0.0           # [mg/L] Concentration of COD entering the system with the input flow of water

#___________________ EXPERIMENTAL DATA ___________________________________________________
# Sampling times [min]
expData_ts <- c(0.0, 2.0, 4.0, 6.0, 8.0, 10.0, 12.5, 15.0, 17.0, 19.0, 21.0, 23.0, 25.0, 27.5, 30.0, 32.0, 34.0, 36.0, 38.0, 40.0)
# Free chloride [mg/L].  
expData_FC  <- Conv_FC*c(230.0, 192.0, 128.0, 70.0, 30.0, 8.0, 266.0, 174.0, 82.0, 36.0, 12.0, 4.0, 2.0, 188.0, 98.0, 28.0, 10.0, 4.0, 0.0, 0.0)
# COD [mg/L].
expData_COD  <- Conv_COD*c(1025.6, 2948.7, 5000.0, 6923.1, 9102.6, 10897.4, 10000.0, 10897.4, 12692.3, 13974.3, 16153.8, 17820.5, 19487.2, 17051.3, 17692.3, 19359.0, 20769.2, 22051.3, 23461.5, 24743.6)


#________________ IMPLEMENTATION OF THE MODEL EQUATIONS (ODEs) ______________________

Model <- function (t, y, parms) {
  
  # --- Model equations ---
  with(as.list(y), {
    # Rename the state variables
    FC  <- y[1]
    COD <- y[2]

    # Model equations (ODEs)
    # Free chloride
    dFC   <- (Fw/V)*(FC_in - FC) + FCi/V - lambda*FC - Kfc*FC*COD
    # Chemical oxygen demand
    dCOD <- (Fw/V)*(COD_in - COD) + (Mil/V)*Kilo_b +(Mrl/V)*Krlo_b - Kco*COD*FC
 
    # Output of the function
    return(list(c(dFC, dCOD))) })
}

# Initial conditions set --------------------------- 
FC0   <-expData_FC[1]  # [mg/L] Initial conditions for FC (from experimental data)
COD0  <-expData_COD[1] # [mg/L] Initial conditions for COD (from experimental data)

# Put together initial conditions
S0   <-c(FC0,COD0)  

# Simulation time, discretized using dtinj as the separation between two consecutive time points
tl <- seq(0,tFpin_e[length(tFpin_e)],dtinj) # min

# Memory allocation for the solution of the ODE system
SSol<-matrix(0,nrow=length(tl),ncol=(2)) # row length=number of elements in list of integration. 
# col length=number of states
# The first row corresponds with the initial conditions
SSol[1,] = S0

# Counters required to implement the discrete addition of Free Chloride and Produces
countFC <- 1 # Initially fixed for FC to 1 (first injection)
countP  <- 1 # Initially fixed for produces to 1 (first injection)

# Parameter used to approximate equality conditions into inequality conditions
# This is mainly used to avoid problems when comparing (using equalities) two real numbers
# A small enough number should be used
timeDifTol <- 1.0e-7 # [s] 

#___________ NUMERICAL INTEGRATION OF THE SYSTEM OF ODEs (MODEL) ________________
for ( ii in 1:(length(tl)-1) ){ # Go through all elements in the time list
  
  # Initial and final times in time interval ii
  tI    <- tl[ii]
  tF    <- tl[ii+1]
  
  # Is free chlorine added in this step?
  if( countFC<=length(tFCinj) ) {
    if( (abs(tl[ii]-tFCinj[countFC]))<timeDifTol ){# Condition tl[ii]=tFCinj[countFC] is approximated as an inequality
      # If the condition holds, FC is injected in the tank
      FCi <- FCinj
      # The duration of the step is the same as the duration of the FC addition, therefore the counter is updated
      # each time this "if condition" is matched
      countFC <- countFC + 1 # next addition of FC
    }
    else{
      # If the condition does not hold, FC is not injected
      FCi<-0.0
    }
  }
  else{
    # If the condition does not hold, FC is not injected
    FCi<-0.0
  }
  
  # Are produces added?
  if( countP<=length(tFpin_e) ){
    if( (tl[ii]>=tFpin_s[countP]) && (tl[ii]<=tFpin_e[countP]) ){
      # If these conditions hold, produces are inserted in the tank
      Kilo_b <- Kilo;
      Krlo_b <- Krlo;
      Fil_b  <- Fil;
      Frl_b  <- Frl;
      
      # The duration of the step is smaller than the duration of the addition of lettuce. Therefore the counter only
      # must be updated at the end of the addition
      if( (abs(tl[ii]-tFpin_e[countP]))<timeDifTol ){# Condition tl[ii]=tFpin_e[countP] is approximated as an inequality
        countP = countP + 1 # next addition of produces
      }
      # At the beginning of the produce addition, the initial condition of bacteria in red lettuce must be the 
      # inoculation concentration
      if( (abs(tl[ii]-tFpin_s[countP]))<timeDifTol ){# Condition tl[ii]=tFpin_s[countP] is approximated as an inequality
        # Reset initial condition in red lettuce  

      }
    }
    else{
      # If the conditions do not hold, produces are not added therefore, input flows in the tank are zero and
      # transfer from produces to water are also zero
      Kilo_b<-0    
      Krlo_b<-0    
      Fil_b<-0                           
      Frl_b<-0

    }
  }
  else{
    # If the conditions do not hold, produces are not added therefore, input flows in the tank are zero and
    # transfer from produces to water are also zero
    Kilo_b<-0    
    Krlo_b<-0    
    Fil_b<-0                           
    Frl_b<-0

  }
  
  # Call the Solver for levels of FC, COD and concentrations of Xw, Xil, Xrl 
  out <- ode(y<-c(FC<-S0[1], COD<-S0[2]), times<-seq(tI,tF,dtinj), func <- Model, 
             parms<-NULL, atol= 1.0e-7, rtol= 1.0e-5)
  
  # The initial conditions in the next integration step (ii+1) are the values obtained at the end of this time step (ii)
  lendSol<-length(out[,1])
  FC<-as.numeric(out[lendSol,2])
  COD<-as.numeric(out[lendSol,3])

  S0<-c(FC,COD)
  
  # Store the solution in this integration step (ii) in the SSol matrix
  SSol[ii+1,] <- S0
}



# __________________ REPRESENTATION OF THE RESULTS ___________________________________
par(mfcol=c(1,2)) # 2x1 subplot display

#--------- FC plot ----------
# Model solution
plot(tl,SSol[,1],type="l",xlab="t",ylab="FC [mg/L]",lwd=2.0)
# Experimental data
points(expData_ts,expData_FC,col="blue")



#--------- COD plot ----------
# Model solution
plot(tl,SSol[,2],type="l",xlab="t",ylab="COD [mg/L]",lwd=2.0)
# Experimental data
points(expData_ts,expData_COD,col="blue")


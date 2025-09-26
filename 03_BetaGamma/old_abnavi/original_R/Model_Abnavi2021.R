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
alpha <- 82621                # [mg-COD/(mg-FC·min)] Parameter in the Hill's like equation
Kfc   <- 0.00078145           # [L/(min·mg-COD)] Reaction rate constant for the reaction of FC and organic matter in the Fc's eq.
Kco   <- 0.006567             # [L/(min·mg-FC)] Reaction rate constant for the reaction of FC and organic matter in COD's  eq.
Kilw  <- 455.03               # [1/min] Constant of the binding rate (from water to iceberg lettuce)
Kwil  <- 844.5                # [1/min] Constant of the unbinding rate (from iceberg lettuce to water)
Kilo  <- 4.9368               # [mg-COD/(g-iceberg lettuce·min)] Rate at which COD is transferred from the
#    iceberg lettuce to the water. It includes the concentration of COD
#    in the produce (Kilo = Kil*CODil). If it is not included a new
#    equation for COD in the produce should be added 
FCinj <- 8602.2               # [mg/min] To be added during dtinj
Fw    <- 0.51374              # [L/min] Flow of water replenishment
Km    <- 3999.7               # [mg/L] Parameter in Hill equation 
nCOD  <- 2.9116               # Exponent in Hill's eq. term
vA2   <- 0.056977             # Proportionality factor between Hill's equation in Xw and X_produce, 
# such that Hill's_(X_w)=vA2*Hill's_(Xil or Xrl)

# Assumed
Krlo <- Kilo                  # [mg-COD/(g-red lettuce·min)] Rate at which COD is transferred from the
#    red lettuce to the water. It includes the concentration of COD
#    in the produce (Krlo = Krl*CODrl). If it is not included a new
#    equation for COD in the produce should be added 
Krlw <- Kilw                  # [1/min] Constant of the binding rate (from water to red lettuce)
Kwrl <- Kwil                  # [1/min] Constant of the unbinding rate (from red lettuce to water)

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
Xw_in  <- 0.0             # [CFU/mL] Concentration of bacteria entering the system with the input flow of water
Xil_in <- 0.0             # [CFU/g] Concentration of bacteria entering the system with the iceberg lettuce
Xrl_in <- 10^5.0          # [CFU/g] Concentration of bacteria entering the system with the red lettuce

# detection limits
limitXw  <- 10.0^(-0.2) # Limit of detection of bacteria in water
limitXil <- 10.0^(-1.0) # Limit of detection of bacteria in produce 


#___________________ EXPERIMENTAL DATA ___________________________________________________
# Sampling times [min]
expData_ts <- c(0.0, 2.0, 4.0, 6.0, 8.0, 10.0, 12.5, 15.0, 17.0, 19.0, 21.0, 23.0, 25.0, 27.5, 30.0, 32.0, 34.0, 36.0, 38.0, 40.0)
# Free chloride [mg/L].  
expData_FC  <- Conv_FC*c(230.0, 192.0, 128.0, 70.0, 30.0, 8.0, 266.0, 174.0, 82.0, 36.0, 12.0, 4.0, 2.0, 188.0, 98.0, 28.0, 10.0, 4.0, 0.0, 0.0)
# COD [mg/L].
expData_COD  <- Conv_COD*c(1025.6, 2948.7, 5000.0, 6923.1, 9102.6, 10897.4, 10000.0, 10897.4, 12692.3, 13974.3, 16153.8, 17820.5, 19487.2, 17051.3, 17692.3, 19359.0, 20769.2, 22051.3, 23461.5, 24743.6)
# Bacteria in water [log10 MNU/ml]
expData_Xw <- c(-0.2, -0.2, -0.2, -0.2, 0.16, 0.76, -0.2, -0.2, -0.2, -0.2, 0.33, 1.0, 1.5, -0.2, -0.2, -0.14, 0.63, 1.3, 1.8, 2.1)
# Bacteria in iceberg lettuce [log10 MNU/g].
expData_Xil  <- c(-1.0, -1.0, -1.0, -1.0, -0.89, -0.04, -1.0, -1.0, -1.0, -1.0, -1.0, -0.12, 0.6, -1.0, -1.0, -1.0, -0.59, 0.25, 0.97, 1.4)

#________________ IMPLEMENTATION OF THE MODEL EQUATIONS (ODEs) ______________________

Model <- function (t, y, parms) {
  # Rate of deactivation of bacteria due to the presence of FC (water)
  Alpha1<-alpha^(nCOD)/(Km^(nCOD)+COD^(nCOD)) #Hills function term
  # Rate of deactivation of bacteria due to the presence of FC (produce)
  Alpha2<-vA2*Alpha1  
  
  # --- Model equations ---
  with(as.list(y), {
    # Rename the state variables
    FC  <- y[1]
    COD <- y[2]
    Xw  <- y[3]
    Xil <- y[4]
    Xrl <- y[5]
    # Model equations (ODEs)
    # Free chloride
    dFC   <- (Fw/V)*(FC_in - FC) + FCi/V - lambda*FC - Kfc*FC*COD
    # Chemical oxygen demand
    dCOD <- (Fw/V)*(COD_in - COD) + (Mil/V)*Kilo_b +(Mrl/V)*Krlo_b - Kco*COD*FC
    # Concentration of bacteria in water
    dXw  <- (Fw/V)*(Xw_in - Xw) - Alpha1*FC*Xw + (Mil/V)*Kilw*Xil + (Mrl/V)*Krlw*Xrl - (Kwil+Kwrl)*Xw 
    # Concentration of bacteria in iceberg lettuce
    dXil <- (Fil_b/Mil)*(Xil_in - Xil) - Kilw*Xil + (V/Mil)*Kwil*Xw - Alpha2*FC*Xil
    # Concentration of bacteria in red lettuce
    dXrl <- (Frl_b/Mrl)*(Xrl_in - Xrl)- Krlw*Xrl + (V/Mrl)*Kwrl*Xw - Alpha2*FC*Xrl
    
    # Output of the function
    return(list(c(dFC, dCOD, dXw, dXil, dXrl))) })
}

# Initial conditions set --------------------------- 
FC0   <-expData_FC[1]  # [mg/L] Initial conditions for FC (from experimental data)
COD0  <-expData_COD[1] # [mg/L] Initial conditions for COD (from experimental data)
Xw0   <-0              # [CFU/mL] Initial conditions for bacteria in water (from paper)
Xil0  <-0              # [CFU/g] Inoculation of bacteria in iceberg lettuce (from paper)
Xrl0  <-1e+5           # [CFU/g] Inoculation of bacteria in red lettuce (from paper)
# Put together initial conditions
S0   <-c(FC0,COD0,Xw0,Xil0,Xrl0)  

# Simulation time, discretized using dtinj as the separation between two consecutive time points
tl <- seq(0,tFpin_e[length(tFpin_e)],dtinj) # min

# Memory allocation for the solution of the ODE system
SSol<-matrix(0,nrow=length(tl),ncol=(5)) # row length=number of elements in list of integration. 
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
        S0[5] <- Xrl_in
      }
    }
    else{
      # If the conditions do not hold, produces are not added therefore, input flows in the tank are zero and
      # transfer from produces to water are also zero
      Kilo_b<-0    
      Krlo_b<-0    
      Fil_b<-0                           
      Frl_b<-0
      S0[4]<-0
      S0[5]<-0
    }
  }
  else{
    # If the conditions do not hold, produces are not added therefore, input flows in the tank are zero and
    # transfer from produces to water are also zero
    Kilo_b<-0    
    Krlo_b<-0    
    Fil_b<-0                           
    Frl_b<-0
    S0[4]<-0
    S0[5]<-0
  }
  
  # Call the Solver for levels of FC, COD and concentrations of Xw, Xil, Xrl 
  out <- ode(y<-c(FC<-S0[1], COD<-S0[2], Xw<-S0[3], Xil<-S0[4], Xrl<-S0[5]), times<-seq(tI,tF,dtinj), func <- Model, 
             parms<-NULL, atol= 1.0e-7, rtol= 1.0e-5)
  
  # The initial conditions in the next integration step (ii+1) are the values obtained at the end of this time step (ii)
  lendSol<-length(out[,1])
  FC<-as.numeric(out[lendSol,2])
  COD<-as.numeric(out[lendSol,3])
  Xw<-as.numeric(out[lendSol,4])
  Xil<-as.numeric(out[lendSol,5])
  Xrl<-as.numeric(out[lendSol,6])
  S0<-c(FC,COD,Xw,Xil,Xrl)
  
  # Store the solution in this integration step (ii) in the SSol matrix
  SSol[ii+1,] <- S0
}

# Function to compute the concentration of bacteria in logarithmic scale and apply the limits of detection
logf10X <- function (x,limitX) {
  if(x<=limitX){           
    x<- limitX
    f<-log10(x)
  }
  else{
    f<-log10(x)
  }
  return(f)
} 

# Transform the concentraion of bacteria to log10 scale
logxw<-matrix(0,nrow=length(tl),ncol=1)
logxil<-matrix(0,nrow=length(tl),ncol=1)
for (ii in 1:length(tl)) {
  logxw[ii]<-logf10X(SSol[ii,3],limitXw)
  logxil[ii]<-logf10X(SSol[ii,4],limitXil)
}

# __________________ REPRESENTATION OF THE RESULTS ___________________________________
par(mfcol=c(2,2)) # 2x2 subplot display

#--------- FC plot ----------
# Model solution
plot(tl,SSol[,1],type="l",xlab="t",ylab="FC [mg/L]",lwd=2.0)
# Experimental data
points(expData_ts,expData_FC,col="blue")

#--------- Xw plot ----------
# Model solution
plot(tl,logxw,type="l",xlab="t",ylab="Xw [log10(CFU/mL)]",lwd=2.0)
# Experimental data
points(expData_ts,expData_Xw,col="blue")

#--------- COD plot ----------
# Model solution
plot(tl,SSol[,2],type="l",xlab="t",ylab="COD [mg/L]",lwd=2.0)
# Experimental data
points(expData_ts,expData_COD,col="blue")

#--------- Xil plot ----------
# Model solution
plot(tl,logxil,type="l",xlab="t",ylab="Xil [log10(CFU/g)]",lwd=2.0)
# Experimental data
points(expData_ts,expData_Xil,col="blue")
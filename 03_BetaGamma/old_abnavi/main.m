clear all
close all
beta=7.81*1e-4;
gam=8.16;
%best 0.000822536895314   6.757390942273783


[X,FVAL,EXITFLAG,OUTPUT] = fmincon(@cost,[beta gam])
%
function J=cost(pp)

[XX,JJ] = COD_FC_model(pp(1),pp(2));
JJ


J=JJ;
end
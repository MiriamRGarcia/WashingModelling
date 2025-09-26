function dx = odeAbnavi(t, x, pA2, pAlpha_m, pnCOD, pKm, pFw, pV, pLambda, pKfc, sFCinj,...
                        pMil, pKilo, pMrl, pKrlo, pKco, pKilw, pKrlw, pKwil, pKwrl,...
                        pFil, pFrl, pFC_in, pCOD_in, pXw_in, pXil_in, pXrl_in)
% State variables
xFC  = x(1);
xCOD = x(2);
xXw  = x(3);
xXil = x(4);
xXrl = x(5);

% Computation of alpha
if xCOD < 0.0
    xCOD = 0.0; % This is to avoid negative COD although it should not happen
end
vAlpha2 = pA2*pAlpha_m^pnCOD/(pKm^pnCOD + xCOD^pnCOD);
vAlpha = pAlpha_m^pnCOD/(pKm^pnCOD + xCOD^pnCOD);

% ODEs
dFC  = pFw/pV*(pFC_in-xFC) - pLambda*xFC - pKfc*xCOD*xFC + sFCinj/pV;
dCOD = pFw/pV*(pCOD_in-xCOD) + pMil/pV*pKilo  + pMrl/pV*pKrlo - pKco*xCOD*xFC;
dXw  = pFw/pV*(pXw_in-xXw) - vAlpha*xXw*xFC + (pMil/pV)*pKilw*xXil + (pMrl/pV)*pKrlw*xXrl - (pKwil+pKwrl)*xXw;
dXil = pFil/pMil*(pXil_in-xXil) - pKilw*xXil + pKwil*(pV/pMil)*xXw - vAlpha2*xXil*xFC;
dXrl = pFrl/pMrl*(pXrl_in-xXrl) - pKrlw*xXrl + pKwrl*(pV/pMrl)*xXw - vAlpha2*xXrl*xFC;
%keyboard

% Output argument
dx = [dFC; dCOD; dXw; dXil; dXrl];
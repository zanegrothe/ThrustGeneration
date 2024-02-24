% Zane Grothe
% AERO 7510
% HW 2
% 9/17/21

% Problem #1

clear all
close all
clc

% Givens----------

k=1.4;
M=linspace(0.1,10);
B=1+((k-1)/2)*M.^2;

% Equations----------

AA=(1./M).*(2/(k+1)*B).^((k+1)/2/(k-1));
TT=       (k+1)/2./B;
pp=      ((k+1)/2./B).^(k/(k-1));
rr=      ((k+1)/2./B).^(1/(k-1));
uu=M.*sqrt((k+1)/2./B);
MFPMFP=M.*((k+1)/2./B).^((k+1)/2/(k-1));
FF=(1+k*M.^2)./M./sqrt(2*(k+1)*B);

% Plot----------

loglog(M,AA/100)
text(.3,.025,'A/A* /100')
hold on
loglog(M,TT)
text(7,.15,'T/T*')
loglog(M,pp)
text(1.5,.15,'p/p*')
loglog(M,rr)
text(2.5,.23,'r/r*')
loglog(M,uu/100)
text(.3,.0025,'u/u* /100')
loglog(M,MFPMFP)
text(5,.05,'MFP/MFP*')
loglog(M,FF/100)
text(.2,.015,'F/F* /100')
xlim([0.1,10])
ylim([0.001,1])
grid on
xlabel('Mach Number')
ylabel('Dimensionless Ratios')
title('Isentropic Flow')





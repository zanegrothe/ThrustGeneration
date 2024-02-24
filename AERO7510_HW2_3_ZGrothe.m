% Zane Grothe
% AERO 7510
% HW 2
% 9/17/21

% Problem #3

clear all
close all
clc

% Givens----------

k=1.4;

% Equations----------

M=linspace(.1,1);
Cpstar=((((2+(k-1).*M.^2)./(k+1)).^(k/(k-1)))-1)./(.5*k.*M.^2);

% Plot----------

loglog(M,-Cpstar)
grid on
xlabel('Mach Number')
ylabel('-Cpstar')
title('M vs -Cpstar')




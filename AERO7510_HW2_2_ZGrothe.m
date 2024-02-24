% Zane Grothe
% AERO 7510
% HW 2
% 9/17/21

% Problem #2

clear all
close all
clc

% Givens----------

Astar=1; % in^2
To=200+459.67; % degrees R
po=100; % psia
k=1.4;
R=53.34; % ft_lbf/lbm_R
g=32.17; % lbm/slug

% Equations----------

pb=linspace(0,100);

M=sqrt((2/(k-1))*(((po./pb).^((k-1)/k))-1));

B=1+((k-1)/2)*M.^2;

mdot=Astar*po*sqrt(k/R/To/g).*M.*(1./B).^((k+1)/2/(k-1));

Mstar=1;
Bstar=1+((k-1)/2)*Mstar.^2;
pbstar=po./(Bstar.^(k/(k-1)));

% Plot----------

plot(pb,mdot)
hold on
plot(pbstar,linspace(0,max(mdot)))
text(55,.035,'Choked Flow')

xlabel('Back Pressure psia')
ylabel('Mass Flow Rate lbm/s')
title('pb vs mdot')

disp('Max back pressure for choked flow in psia')
pbstar
disp('Max mass flow rate at choked flow in lbm/s')
mdotstar=Astar*po*sqrt(k/R/To/g).*Mstar.*(1./Bstar).^((k+1)/2/(k-1))




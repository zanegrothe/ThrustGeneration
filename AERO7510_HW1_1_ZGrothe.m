% Zane Grothe
% AERO 7510
% HW 1
% 9/7/21

% Problem #1

clear all
close all
clc

% Part 1

% Givens----------

hPR=19000; %Btu/lbm
drag=5.0; 
g=32.174; %ft/s^2
J=778; %ft_lbf/Btu

R=[50,100,300,500,1000,2000,3000,10000]; %miles
Eta=linspace(.1,.9); %efficiency

% Equations & Plots----------

PI=1-1./exp(g*R(1,1)*5280./(hPR*drag*Eta*J*g));
semilogy(Eta,PI)
hold on
PI=1-1./exp(g*R(1,2)*5280./(hPR*drag*Eta*J*g));
semilogy(Eta,PI)
PI=1-1./exp(g*R(1,3)*5280./(hPR*drag*Eta*J*g));
semilogy(Eta,PI)
PI=1-1./exp(g*R(1,4)*5280./(hPR*drag*Eta*J*g));
semilogy(Eta,PI)
PI=1-1./exp(g*R(1,5)*5280./(hPR*drag*Eta*J*g));
semilogy(Eta,PI)
PI=1-1./exp(g*R(1,6)*5280./(hPR*drag*Eta*J*g));
semilogy(Eta,PI)
PI=1-1./exp(g*R(1,7)*5280./(hPR*drag*Eta*J*g));
semilogy(Eta,PI)
PI=1-1./exp(g*R(1,8)*5280./(hPR*drag*Eta*J*g));
semilogy(Eta,PI)
hold off
xlim([0,1])
ylim([0.005,1.5])
grid on
xlabel('Overall Efficiency')
ylabel('Required Fuel Mass Fraction')
title('Air Breathing Engine Cruise Performance')
text(.9,.15,'2000 Miles')
text(.9,.23,'3000 Miles')
text(.9,.55,'10000 Miles')

% Part 2

% Calculations----------

disp('Efficiency for fuel mass fraction of .8 at a range of 2000 miles')
Eta=g*R(1,6)*5280./(hPR*drag*log(1/(1-.8))*J*g)
disp('Efficiency for fuel mass fraction of .8 at a range of 3000 miles')
Eta=g*R(1,7)*5280./(hPR*drag*log(1/(1-.8))*J*g)
disp('Efficiency for fuel mass fraction of .8 at a range of 10000 miles')
Eta=g*R(1,8)*5280./(hPR*drag*log(1/(1-.8))*J*g)



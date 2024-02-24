% Zane Grothe
% AERO 7510
% HW 3
% 10/5/21

% Problem #3

% Generalized 1-D Flow with area change, friction, heat addtion, and mass
% addition.

clear all
close all
clc

% Givens----------

M1=;
A1=;
fc=;
dx=;
D=;
dFD=;
mdot1=;
dQ=;
dWx=;
dH=;
y=;
%MW=;
gam=;

p1=;
T1=;
Cp=;

% Influence Coefficients----------

Area=(-2*(1+(gam-1)/2*M1^2))/(1-M1^2);
Friction=(gam*M1^2*(1+(gam-1)/2*M1^2))/(1-M1^2);
Heat=(1+gam*M1^2)/(1-M1^2);
Mass=(2*(1+gam*M1^2)*(1+(gam-1)/2*M1^2))/(1-M1^2);
%MWeight=-Heat;

% Integration---------- ???

DM^2/M^2=Area*dA/A1...
        +Friction*(4*fc*dx/D+dFD/2/gam/p1/A1/M1^2-2*y*dmdot/mdot1)...
        +Heat*(dQ-dWx+dH)/Cp/T1...
        +Mass*dmdot/mdot1;
%        -Mweight*dMW/MW...
%        -dgam/gam;

% Jump Conditions----------
T01=;
Q=;
Wx=;
H=;
T02=(Q-Wx+H)/Cp+T01;

mdot2=;
A2=;
M2=;
p2=(mdot2/mdot1)*(A1/A2)*(M1/M2)...
  *sqrt((1+(gam-1)/2*M1^2)/(1+(gam-1)/2*M2^2))*sqrt(T02/T01);

v1=;
v2=v1*(M2/M1)*sqrt(T2/T1);

rho1=;
rho2=rho1*(p2/p1)*(T1/T2);
T2=T1*(T02/To1)*((1+(gam-1)/2*M1^2)/(1+(gam-1)/2*M2^2));

p01=;
p02=p01*(p2/p1)*((1+(gam-1)/2*M2^2)/(1+(gam-1)/2*M1^2))^(gam/(gam-1));





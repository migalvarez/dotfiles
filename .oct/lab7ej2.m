clc;clear all;close all;

V0 = 12;
R = 1.5*10^3;
C = 4*10^(-3);
tf = 120;
f = @(t,x) V0/C - x/(R*C);

#ode45(función, intervalo de solución, condición inicial)
[t,q] = ode45(f, [0 100], 0);

plot(t,q,'y')

close all; clear all; clc

alpha1 = ;
alpha2 = ;
lam1 = ;
lam2 = ;
gam1 = ;
gam2 = ;

% Notar que la simulacion .slx tiene que tener un nombre distinto al script .m
% No olvidar tirar el 'To Workspace'
sim('presa_depredador_sim.slx')

figure(1)
plot( N1.Time, [N1.data N2.data]); xlabel('t'); legend('cazador','presa')


figure(2)
plot(N1.data, N2.data)

% Recordar que los resultados tienen que ser más suaves, es decir, hay que cambiar el tiempo de operación de la simulación.
% Lo anterior se hace en solver, additional parameters y aumentar el max step size.:

# Toma los datos x, cuya evaluacion corresponde a y. Aproxima un polinomio usando los puntos y sus evaluaciones, plotea 
close all;clear all;clc

x = [0 1 2 3 4 5 6 7 7.44];
y = [0 4.03 8.12 14.23 20.33 27.1 34.53 42.63 46.43];
p = polyfit(x,y,2)
hold on; grid on; axis([0 10 0 50])
plot(x,y,'ro', 'markersize',4,'markerfacecolor','r')
t = linspace(min(x), max(x), 50);
y = polyval(p,t);
plot(t,y,'b')
xlabel('x')
ylabel('y')
title('Polinomio aproximador')
hold off

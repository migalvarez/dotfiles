close all; clear all; clc;
# Llamado de la funcion ejercicio a
[x, y] = p1_a_mig_alvarez(31);

# Coeficientes para polinomio de grado 10.
p = polyfit(x,y, 10);

# Espaciado entre -1 y 1
xx = linspace(-1,1,200);

# Evaluacion en el intervalo xx
ev = polyval(p,xx);

# Graficando

hold on; grid on;

plot(x, y, 'r');
plot(xx, ev, 'b');

legend('escalon','polinomio');

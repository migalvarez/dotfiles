close all;clear all;clc;
# Conjunto de puntos dados y sus respectiva evaluaciones.
x = [-2 -1 0 1 2];
y = [-25 -4 -1 8 47];

# Coeficientes del polinomio interpolador (grado 5).
q = polyfit(x, y, 5);

# Rango para evaluar el polinomio obtenido y luego graficar.
xx = [-2:.01:2];
f = polyval(q, xx);
hold on; grid on;
plot(x, y,'ro')
plot(xx, f, 'b')

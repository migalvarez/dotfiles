% Euler explicito
close all; clear all; clc
h = e/4;
x = e:h:4*e;
% Vector de nodos
y = [];
y(1) = 0;
% Condicion inicial
for i = 2: length(x)
    y(i) = y(i-1) + h*(x(i-1) - (y(i-1)/(x(i-1)*log(x(i-1)))));
endfor
f = @(x) 0.5*x^2+((exp(2)-x^2)/(4*log(x)));

error1 = f(2*e) - y(5);
error2 = f(4*e) - y(13);

fprintf('El error entre la solucion exacta y la numerica en el punto 2e es %d\n', error1);
fprintf('El error entre la solucion exacta y la numerica en el punto 4e es %d\n', error2);

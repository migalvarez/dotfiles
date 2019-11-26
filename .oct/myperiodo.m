close all; clear all; clc
x= [0:2:24];
y = [12 12 11 10 10 14 15 16 15 14 11 11 9];

# Interpolacion cuadratrica.

T = polyfit(x, y, 2);
xx = [0:.01:24];
ev = polyval(T, xx);
t9 = polyval(T, 9);
fprintf('La temperatura en 9 es %d\n',t9);

hold on; grid on; plot(xx,ev,'b'); plot(x, y, 'ro');
A = [ones(size(x))', cos(x)', sin(x)'];
b = y';
x = A\b;
f = x(1) + cos((pi/12)*xx)*x(2) + sin((pi/12)*xx)*x(3);
plot(xx, f, 'y'); legend('cuadratica','puntps','periodica');


clear all; close all; clc
f = @(y) y;
x = linspace(-pi,pi,100);
suma = 0;
M = 1000;

for n = 1:M
    suma = suma-2*(-1)^n/n*sin(n*x);
endfor
hold on;
ezplot(f)
plot(x,suma, 'r')
hold off;

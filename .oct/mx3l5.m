close all; clear all;clc
edad = [22 23 21 28 29 18 33 34 29 20 21 23];
hijos = [0 1 1 1 1 0 1 1 1 1 0 0 ];

p = polyfit(edad, hijos, 1);

f = @(x) exp(p(2)+p(1)*x)/(1-exp(p(2)+p(1)*x));

y = log(f(22)/(1+f(22)))

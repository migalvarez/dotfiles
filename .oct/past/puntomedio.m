# Integración numérica mediante punto medio.

clc;clear,close all

a = -pi;
b = pi;
N = 10;

f = @(x) cos(x+1);
h = (b - a)/N;
node = a:h:b;

pm = (node(1:end-1)+node(2:end)).* 0.5;

# Se me olvidó anotar y hay que completar lo que falrta del código.
I = h*(sum(f(pm+)

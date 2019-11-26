# Integración numérica mediante regla del trapecio.

clc;clear;close all
a = 0;
b = 1;
N = 10;

f = @(x) cos(x+1);
h = (b-a)/N;

node = a:h:b;

I = h * (( f(a) + f(b) ) / 2 + sum(f(node(2:b-1))))

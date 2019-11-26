clc;clear;close all
a = 0;
b = 3;
f = @(x) x.^2;

for i = [10 20 40 80]
    I = trapito(a,b,f,i);
endfor

q = quad(f,a,b)

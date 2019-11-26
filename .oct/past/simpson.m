clc;clear;close all

a = 0;
b = 1;
N = 10;

f = @(x) x.^3;
h = (b - a)/N;

node = a:h:b;

npar = node(3:2:end-2);
par = node(2:2:end-1);

I = h/3 * (f(a)+f(b) + 4*sum(f(par)) + 2*sum(f(par)))
I2 = quad(f,a,b)

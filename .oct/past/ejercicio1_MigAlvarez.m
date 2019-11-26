clear all;close all;clc
f = @(x,y) [x-y.^2;x.^2+(y-3).^2-5];
Df = @(x,y) [1 -2*y;2*x 2*y-6];
x0 = [-2;-1];
tol = 10^(-9);
xk = [];


for it = 1:1000
    x1 = x0 - inv(Df(x0(1),x0(2)))*f(x0(1),x0(2));
    if abs(x1-x0) < tol
        break;
    else
        x0 = x1;
    endif
    xk = [xk;x0];
endfor

disp(x1)

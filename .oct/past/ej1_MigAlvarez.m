close all;clear all;clc
f=@(x,y) [x-y.^2;x.^2+(y-3).^2-5];
Df=@(x,y) [1,-2*y;2*x,2*(y-3)];
x0=[-2;-1];
tol = 10^(-9);
iteraciones = 1;
 
for it=1:2000
    x1=x0-inv(Df(x0(1),x0(2)))*f(x0(1),x0(2)); 
    if norm(x1 - x0) < tol
        break
    endif
    x0 = x1;
    iteraciones = iteraciones + 1;
endfor
x1
iteraciones

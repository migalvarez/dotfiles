clc;clear;close

% Función anónima
f = @(x) cos(x.^2+1)-1;
df = @(x)-1*2*x*sin(x.^2+1);
% La elección del punto inicial modifica el xr final.
x0 = 2;
xr = 1;

%ezplot(f);grid on
%for i = 1:20
%    xr = x0 - f(x0)/df(x0)
%    x0 = xr;
%endfor

% 10e-6 es la tolerancia.
while abs(xr-x0) > 10e-6
    x0 = xr;
    xr = x0 - f(x0)/df(x0)
endwhile

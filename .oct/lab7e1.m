# Euler Explícito.
clc;clear all;close all}

h = 0.1;
x = 0:h:10;
y = []; # Vector vacío
y(1) = 1;
for i = 1:length(x)-1
    y(i + 1) = y(i) + h*10*(sin(x(i)) - y(i));
endfor
plot(x,y)

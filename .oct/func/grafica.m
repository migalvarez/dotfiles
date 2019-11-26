clc;clear;close

%Graficar

f = @(x) x.^2
x = -10:10

plot(x,f(x), 'pk');grid on
title ('holaa')
xlabel ('tiempo')
ylabel ('distancia')

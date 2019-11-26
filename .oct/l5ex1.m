# Test número 1, Miguel Álvarez.
clear all; close all; clc
h = [0:2:24];
t = [12 12 11 10 10 14 15 16 15 14 11 11 9];

p = polyfit(h, t, 2);
x = linspace(min(h),max(h),100);
eval = polyval(p,x);
hold on
plot(h, t, "rs ")
plot(x,eval, "ro-")
xlabel('Hora')
ylabel('Temperatura')

clear all; close all; clc
h = [0:2:24]';
t = [12 12 11 10 10 14 15 16 15 14 11 11 9]';
n = length(h);
w = (2*pi)/24;
A = [ones(n,1), cos(w*h), sin(w*h)];
x = linspace(0,24,50);
p = A\t
ev = p(1)+p(2)*cos(w*x)+p(3)*sin(w*x);
hold on
plot(x, ev)
plot(h, t,"ro")

Tob = p(1)+p(2)*cos(w*h)+p(3)*sin(w*h);
error = norm(t - Tob)

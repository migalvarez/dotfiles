#!/usr/bin/octave -qf
clc;clear;close

a = 0;
b = 1;
disp(a)
for i = 0:4
    c = a + b;
    a = b;
    b = c;
    fdisp(stdout, c)
endfor


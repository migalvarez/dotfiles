clear all;close all; clc;
count = 0;
V = zeros(2,2);
for x = 1:100
    V = [1/x 2/x^2;1/x 2/x^2]
    if rank(V) ~= 2
        disp('Las matrices no son todas invertibles');
        break
    endif
endfor

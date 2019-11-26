clear all; close all; clc;
A = zeros(92,108);
for i = 1:92
    for j = 1:108
        if j == i && j ~= 108 - 4
            A(i, j:j+2) = [3 4 5];
        endif
    endif
endfor
A
diag(A,1)


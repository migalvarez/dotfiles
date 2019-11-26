clear all; close all; clc
A = zeros(98,10);
x = 1;
while x <= 98
    if rem(x,2) == 0
        A(x, 1:10) = [10:-1:1];
    else
        A(x, 1:10) = [1:10];
    endif
    x = x + 1;
endwhile
disp(A)

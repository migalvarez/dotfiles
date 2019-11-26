#!/usr/env/octave -qf

a = [1 2 3;5 6 7;1 1 1]
x = a(:,1)
y = a(1,:)
z = x+y'

b = sum(z)

s = repe(b)

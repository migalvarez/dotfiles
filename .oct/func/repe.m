#!/usr/bin/octave -qf

function [x,y,z] = repe(a)
    x = [a;a^2;2*a];
    y = x' ;
    z = y*x ;
endfunction

clear all;close all;clc
A(1:10,1)=3;
for i=1:10
    j=1;
    while j<2
        if(i>1&&i<3)
            A(i,j)=A(i,j)+1;
        else
            A(i,j)=0;
        endif
        j=j+1;
    endwhile
endfor

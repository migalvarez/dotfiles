function retval = mybisection(f,a,b,tol)
cnt = 1;
while (abs(a-b) >= tol)
    retval = (a+b)/2;
    if f(retval) == 0;
        break;
    elseif f(a)*f(retval) < 0
        b = retval;
    else
        a = retval;
    endif
    cnt++;
endwhile
printf("Numero de pasos = %d\n", cnt)
endfunction

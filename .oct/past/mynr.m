function retval = mynr(f,df,x0,tol)

retval = x0 - (f(x0)/df(x0));

while abs(retval - x0) > tol
    x0 = retval;
    retval = x0 - (f(x0)/df(x0));
endwhile

endfunction

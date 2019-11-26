function retval = ej2_2_MigAlvarez(N)
retval = [];
x = cos(linspace(0,pi,N+1));
y = e.^x;
retval = polyfit(x, y, N);

endfunction


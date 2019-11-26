function retval = ej2_MigAlvarez(N)
retval = [];
x = linspace(-1,1,N+1);
y = e.^x;
retval = polyfit(x, y, N);

endfunction

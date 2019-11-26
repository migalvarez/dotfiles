function retval = intetrap(a,b,f,N)

h = (b - a)/N;
node = a:h:b;

retval = h * (f(a) + f(b))/2 + sum(f(node(2:end-1)));

endfunction

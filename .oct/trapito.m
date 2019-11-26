function retval = trapito(f,a,b,N)

h = (b - a)/N;

node = a:h:b;

I = I = h/3 * (f(a)+f(b) + 4*sum(f(par)) + 2*sum(f(par)));

endfunction

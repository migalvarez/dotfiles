#   ---
#   Function to calculate the roots of a system.
#   e.g.
#   f = @(x,y) [cos(x)-y+2*x;y-x.^2]
#   Df = @(x,y) [-sin(x)+2 -1;-2*x 1]
#   x0 = [4;15]
#   ---

function retval = mynewton(f, Df, x0, tol)

retval = x0 - inv(Df(x0(1),x0(2)))*f(x0(1),x0(2));

while abs(retval - x0) > tol
    x0 = retval;
    retval = x0 - inv(Df(x0(1),x0(2)))*f(x0(1),x0(2));
endwhile

endfunction

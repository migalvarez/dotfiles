# Para el retorno de ambos vectores [x, y] = p1_a_mig_alvarez(n)

# n es el numero de nodos a utilizar.
function [retval1, retval2] = p1_a_mig_alvarez(n)
# Espaciado lineal entre 0 y pi.
x = linspace(0, pi, n);

# Retorno de los vectores pedidos.
retval1 = cos(x)';
retval2 = (cos(x)>=0);
retval2 = retval2';

endfunction

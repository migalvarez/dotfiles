#
# Función que gira una matriz 90 grados e sentido antihorario.
#

function F = l2ej2(a)
# Comprobar si es una matriz cuadrada.
F = zeros(size(a));
len=length(a);
if size(a)(1,1)==size(a)(1,2)
    for x = [1:len]
        F(x,[1:len]) = a([1:len],len+1-x);
    endfor
else
    disp('La matriz no es cuadrada');
endif



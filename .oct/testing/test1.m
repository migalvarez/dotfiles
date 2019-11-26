
n = 22;
A = zeros(n,n);
for i = 1:n
    for j = 1:n
        if i == j;
            A(i,j) = n;
        endif
        if i ~= n
            A(i,n) = 1;
        else
            A(i,n) = n;
        endif
    endfor
endfor
A(i,1:n-1) = 1;
A

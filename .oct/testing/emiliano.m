n = 20;
A = zeros(n,n);
x = 0;
while (x < n)
    A(n,x+1)=1;
    A(x+1,n)=1;
    A(x+1,x+1) = n;
    x=x+1;
endwhile
A

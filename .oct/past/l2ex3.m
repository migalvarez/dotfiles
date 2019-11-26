function F = l2ex3(x)
tic;
F = 1;
for m = 1:100
    F = F + (x^m/fac(m));
endfor
toc

clc;clear;close
f = @(x) 1 ./ (x.^2 + 1);
v = zeros(21,1);
for i = 1:21
    v(i) = -5+0.5*(i-1);
end
h = f(v);
plot(v,h, 'o')

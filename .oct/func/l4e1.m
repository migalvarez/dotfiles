clc;clear;close
function v = polyinterp(x,y,u)
n = length(x);
v = zeros(size(u));
for k = 1:n
    w = ones(size(u));
    for i = 1:n
        if i ~= k
            w = (u-x(i))./(x(k)-x(i)).*w;
        end
    end
    v = v + w*y(k);
end

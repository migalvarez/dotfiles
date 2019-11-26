function tot = l2ej5(a)

in = find(a <= -2);
tot(in) = sin(a(in)).^2;
in = find(a > -2 & a < 2);
tot(in) = 1-e.^(-a(in));
in = find ( a >= 2);
tot(in) = 1 ./ (a(in)+1);

 f = @(x) (x < -2).*((sin(x)).^2) .+ (x> -2 & x < 2).*(1-e.^(-x)) .+ (x>=2).*(1 ./(x+1));

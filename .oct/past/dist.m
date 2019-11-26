#
#   Function to calculate the distance between two points.
#

function retval = dist(v1,v2)


# Checking that both vectors are indeed in R3 and have the same lenght.
if (length(v1) ~= 3 || length(v1) ~= length(v2))
    error 'X and Y must have the same dimention and must be in R3';
endif
# Calculating the distance between both vectors.

n = 1;
sqres = 0;

while n <= 3
    sqres = sqres + (v1(n)-v2(n))^2;
    n = n+1;
endwhile

v1v2_norm = sqrt(sqres);

retval = v1v2_norm;


#
#   Function to calculate the area of the parallelepiped formed by the two paralelograms formed by two vectors and their cross product.
#
# REVISRA LA FORMULA DEL AREA (ESTA MAL).
function retval = areap(v1,v2)


# Checking that both vectors are indeed in R3 and have the same lenght.
if (length(v1) ~= 3 || length(v1) ~= length(v2))
    error 'X and Y must have the same dimention and must be in R3';
endif

# Calculating the distance between both vectors.
#modcross = mcross(v1,v2);
#vcross = cross(v1,v2);
#
#retval = 2*modcross+dist(v1,v1+vcross)*modcross+dist(v2,v2+vcross)*modcross+dist(v1,v2)*modcross;
v3 = cross(v1,v2);
v4 = [v3(1)-v1(1) v3(2)-v1(2) v3(3)-v1(3)];
v5 = [v2(1)-v1(1) v2(2)-v1(2) v2(3)-v1(3)];

A1 = mcross(v1,v2);
A2 = mcross(v1,v3);
A3 = mcross(v2,v3);
A4 = mcross(v4,v5);

retval = A1*2+A2+A3+A4/2;



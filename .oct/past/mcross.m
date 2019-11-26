#   ---
#   Function to calculate the cross product between 2 vectors (R^3)
#   ---

function retval = mcross(v1, v2)

# Checking that both vectors are indeed in R3 and have the same lenght.
if (length(v1) ~= 3 || length(v1) ~= length(v2))
    error 'X and Y must have the same dimention and must be in R3';
endif

# Calculating the angle between both vectors.
theta = acos(dot(v1,v2)/sqrt(sum(v1.^2)*sum(v2.^2)));

retval = norm(v1)*norm(v2)*sin(theta);

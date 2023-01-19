% This is a function that calculates the tolerance for a d-dimensional
% Newton approximation given and vector of old x values and  vector
% of new x values. For more information refer to the methods part of
% problem2

function tol = newtondTol(x_old, x_new)
    sum = 0;
    for i = 1:length(x_old)
        sum = sum + (x_old(i)-x_new(i))^2;
    end
    tol = sqrt(sum / length(x_old));


end
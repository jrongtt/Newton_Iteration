% Newtond is the d-dimensional newton function that calculates the root
% of a d-dimensional vector of functions given initial guess x0
% For more information refer to the write up.

function x = newtond(f, jac, x0, tol)
    x_new = x0;
    notConverged = true;
    while (notConverged );
        x_old = x_new;
        j_old = evaluateVector(x_old, jac);
        f_old = evaluateVector(x_old, f);
        x_new = x_old - (inv(j_old)*f_old);
        notConverged = newtondTol(x_old, x_new) > tol;
    end
    x = x_new;
end
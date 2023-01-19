% Newton's Method Function: converges on an x-coordinate of a root
% This is implemented in hybrid, and the initial x0 is calculated from
% the bisection function. Refer to the writeup for more information.


function root =  newtowns(f, dfdx, x0, tol2)
    x_new = x0;
    f_new = f(x_new);
    notConverged = true;
    while (notConverged);
        x_old = x_new;
        f_old = f_new;
        dfdx_old = dfdx(x_old);
        x_new = x_old - (f_old/dfdx_old);
        f_new = f(x_new);
        notConverged = tol2 < (x_new - x_old)/(x_new);
    end
    root = x_new;
end
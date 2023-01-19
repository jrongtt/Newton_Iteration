% Hybrid Function: returns an x-coordinate of the root of a function
% Initially calls the bisection function, then passes that result
% into the newtons function and returns the root of the newtowns function
% For more information refer to the writeup


function x =  hybrid(f, dfdx, xmin, xmax, tol1, tol2)
    bival = bisection(f, xmin, xmax, tol1);
    x0 = bival;
    x = newtowns(f, dfdx, x0, tol2);
end
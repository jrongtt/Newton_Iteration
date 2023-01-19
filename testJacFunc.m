% This is the Jacobian Matrix of the example vector of functions
% given in the assignment
function f = testJacFunc(x, y, z)
    f = [2*x, 4*y^3, 6*z^5; (-y*z^2*sin(x*y*z^2)-1), (-x*z^2*sin(x*y*z^2)-1), (-2*x*y*z*sin(x*y*z^2)-1); (2*z - 2*y - 2*x), (-2*x + 2*z), (3*z^2 - 2*z + 2*x + 2*y);]; 
end
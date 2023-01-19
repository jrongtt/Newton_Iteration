% Function that Evaluates an n-dimensional function 
% (with dimensions len(X)) at point vector x (with length length(x))

function val = evaluateVector(x, f)
    s = 'f(';
    for i = 1:length(x)
        s = strcat(s, 'x(', int2str(i), ')');
        if (i ~= length(x))
            s = strcat(s, ',');
        end
    end

    
    s = strcat(s, ');');

    

    val = (eval(s));
 


end

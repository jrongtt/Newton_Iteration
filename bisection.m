% Bisection Function: converges on an estimate of the x-coordinate of a 
% root for a function with an initial xmin xmax,
% provided f(min)f(max)<0 
 
function bival =  bisection(f, xmin, xmax, tol1)
    xmid = (xmax + xmin)/2;
    fmin = f(xmin);
    curr_tol = abs((xmin-xmax)/(xmid));
    notConverged = curr_tol > tol1;
    while(notConverged);
        xmid = (xmax + xmin)/2;
        fmid = f(xmid);

        if(fmid == 0)
            notConverged = false;
        elseif (fmid*fmin< 0 )
            xmax = xmid;
        else
            xmin = xmid;
            fmin = fmid;
        end
        xmid =  (xmax + xmin)/2;
        
        curr_tol = abs((xmin-xmax)/(xmid));
        notConverged = curr_tol > tol1;
    end
    bival = xmid;  
    
end
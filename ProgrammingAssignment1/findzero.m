
function p = findzero(f, a, b, tol)

w = 1;

% print header
fprintf('       a             b             p           f(p)     \n');
fprintf('--------------------------------------------------------\n');

% iterates at most 100 times
for n = 1:100
    
    % compute p and function f at p
    p = a + (w * f(a) * (a - b)) / (f(b) - w * f(a));
    f_p = f(p);
    
    % output row of results 
    fprintf('%12.8f  %12.8f  %12.8f  %12.8f\n', a, b, p, f(p));
    
    % set variables 
    if f_p * f(b) > 0
        w = 1 / 2;
    else
        w = 1;
        a = b;
    end
    b = p;
    
    % check terminating conditions 
    if abs(b - a) < tol, break; end
    if abs(f_p) < tol, break; end
    
end

end


    



    
    
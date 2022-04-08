function p = newton(N, t_i, f, df, p0, tol, maxiter)
n = 0;
while n < maxiter
    p = p0 - f(p0)/df(p0);
    if abs(p - p0) < tol
        fprintf(' %2d  %12.3f  %12.8f\n', N, t_i, p);
        break; 
    end
    p0 = p;
    n = n + 1;
    fprintf(' %2d  %12.3f  %12.8f\n', N, t_i, p);
end
if n == maxiter
    %error('maxiter exceeded without convergence')
end
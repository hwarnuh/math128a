function [t,w] = backeuler(f, dfdy, a, b, alpha, N, maxiter, tol)

h = (b - a) / N;
t = zeros(N+1, 1);
t(1) = a;
w = zeros(N+1, 1);
w(1) = alpha;

fprintf('  N       t(i+1)       w(i+1)   \n');
fprintf('---------------------------------\n');

for i = 1:N
    t_i = t(i) + h;
    w0 = w(i);
    f_i = @(x) x - w0 - h*f(t_i, x); 
    df_i = @(x) 1 - h*dfdy(t_i, x);
    t(i + 1) = t_i;
    w(i + 1) = newton(i, t_i, f_i, df_i, w0, tol, maxiter);
end

end


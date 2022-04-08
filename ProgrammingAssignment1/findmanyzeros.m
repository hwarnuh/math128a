function p = findmanyzeros(f, a, b, n, tol)

% initialize output vector
p = [];

% calculate interval width and x vector
interval_width = (b - a) / n;
xs = a:interval_width:b;

% iterate n times - compute zero using findzero if condition applies
for i = 2:n + 1
    if f(xs(i)) * f(xs(i - 1)) < 0
        p_i = findzero(f, xs(i), xs(i - 1), tol);
        % concatenate new computed zero to end of output vector
        p(end + 1) = p_i;
    end
end

end
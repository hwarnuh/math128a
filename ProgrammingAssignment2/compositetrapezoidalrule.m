function L = compositetrapezoidalrule(g, a, b, n)

% Define necessary variables to use diffsplineeval
t = [0, 1, 2, 3, 4, 5];
a_x = [1, 1.5, 2, 2, 2.5, 2.5];
[b_x, c_x, d_x] = ncspline(t, a_x);
a_y = [1, 0.5, 1, 1.5, 1.5, 1];
[b_y, c_y, d_y] = ncspline(t, a_y);
t_range = linspace(a, b, n + 1);

% Evalute h value 
h = (b - a)/n;

% Evalute d_xx, d_yy and calculate summation in CTR
d_xx = diffsplineeval(t, a_x, b_x, c_x, d_x, t_range);
d_yy = diffsplineeval(t, a_y, b_y, c_y, d_y, t_range);
summation_arr = g(d_xx, d_yy);

% Compute L for this n value 
L = (h / 2) * (-summation_arr(1) + 2 * sum(summation_arr) - summation_arr(end));
end
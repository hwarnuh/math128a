function p = findmanyzeros_plot(f, f_div, a, b, n, tol)

clf

% plot function f
xx = linspace(0, 10, 1000);
plot(xx, f(xx), 'linewidth', 1, 'displayname', 'f_1(x)');
hold on

% determine zeros of f
p = findmanyzeros(f, a, b, n, tol);

% plot line y=0 and zeros of f
line([0, 10], [0, 0], 'linewidth', 1, 'color', 'r', 'displayname', 'y=0');
plot(p, f(p), 'ko', 'linewidth', 1, 'displayname', 'zeros');

% calculate zeros of derivative and plot extrema of f
p_derivative = findmanyzeros(f_div, a, b, n, tol);
plot(p_derivative, f(p_derivative), 'm^', 'linewidth', 1, 'displayname', 'extrema');

legend('location', 'southeast')
grid on

end 
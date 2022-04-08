function newishplot(f, f_div)
clf
xx = linspace(0, 10, 1000);
disp((sin(xx .* xx) / (10 + (xx .* xx))) - (exp(-xx / 10) / 50))
plot(xx, f(xx), 'linewidth', 1, 'displayname', 'f(x)');
%plot(xx, f_div(xx), 'linewidth', 1, 'displayname', 'f_d(x)');
hold on
grid on
end
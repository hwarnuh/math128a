function t100val = rungekutta4error(a, b, h, alpha, N)

[t,w] = rungekutta4(a, b, h, alpha, N);
t100val = w(N+1,2);

end
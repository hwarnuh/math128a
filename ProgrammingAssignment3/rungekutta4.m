function [t, w] = rungekutta4(a, b, h, alpha, N)

t = (a:h:b)';
w = zeros(N+1, length(alpha));
w(1,:) = alpha(:)';
for i = 1:N
    k1 = h*fpend(w(i,:));
    k2 = h*fpend(w(i,:) + k1/2);
    k3 = h*fpend(w(i,:) + k2/2);
    k4 = h*fpend(w(i,:) + k3);
    w(i+1,:) = w(i,:) + (k1 + 2*k2 + 2*k3 + k4)/6;
end 
plot(t, w(:,2))
xlabel('t')
ylabel('\theta_2(t)')
title('Case 1')
grid on
end 
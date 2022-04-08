function ydot = fpend(y)

ydot = [];
theta1 = y(1);
theta2 = y(2);
omega1 = y(3);
omega2 = y(4);

ydot(1) = omega1;
ydot(2) = omega2;
ydot(3) = (-3*sin(theta1) - sin(theta1 - (2*theta2)) - 2*sin(theta1 - theta2)*(omega2^2 + cos(theta1 - theta2)*omega1^2))/(3 - cos((2*theta1) - (2*theta2)));
ydot(4) = (2*sin(theta1 - theta2)*(2*omega1^2 + 2*cos(theta1) + cos(theta1 - theta2)*omega2^2))/(3 - cos((2*theta1) - (2*theta2)));

end
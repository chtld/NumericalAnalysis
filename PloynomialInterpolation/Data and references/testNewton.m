f = @(x) 1./(1 + 5 .* x.^2);
% f = @(x) sin(x);
a = -2;
b = 2;
n1 = 4;
n2 = 14;
Newton(f, a, b, n1, n2)
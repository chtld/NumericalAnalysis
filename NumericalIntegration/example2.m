clear;
close all;
format long;
f = @(x) 1./(1+5*x.^2);
a = -5;
b = 5;
I = 1.325175261356735;
CT = zeros(6,2);
GQ = zeros(6,2);
for i=1: 1: 6
    n = 2^i;
    CT(i,1) = Composite_Trapezoidal(f, a, b, n);
    CT(i,2) = abs(I-CT(i,1));
    GQ(i,1) = Composite_Gauss(f, a, b, n, 3);
    GQ(i,2) = abs(I-GQ(i,1));
end
disp(CT);
disp(GQ);
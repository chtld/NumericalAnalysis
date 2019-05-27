function [C] = Newton_Cotes(n)
syms t;
C = zeros(1,n+1);
l = 0: 1: n;
for i=0:1:n
    y = prod(t-l)/(t-i);
    b = int(y,t,0,n);
    C(i+1) = (-1)^(n-i)/(n*factorial(i)*factorial(n-i))*b;
end
end
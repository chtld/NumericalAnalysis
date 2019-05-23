% f = @(x) 2.*sqrt(1-x.^2);
% a = -1;
% b = 1;
f = @(x) 4./(1+x.^2);
a = 0;
b = 1;
m = 6;
I = zeros(m+1,7);
for i = 0: 1: m
   n = 2^i;
   x = a: (b-a)/n: b;
   C = Newton_Cotes(n);
   I(i+1,1) = (b-a)*C*f(x)';
end
for j = 2: 1: 7
    for i = j: 1: m+1
        I(i,j) = 4^(j-1)/(4^(j-1)-1)*I(i,j-1)-1/(4^(j-1)-1)*I(i-1,j-1);
    end
end
disp(I);
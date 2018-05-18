function [Gauss_weight, Gauss_point]=generate_gauss_weight_point(n)
    L = Legendre(n+1);
    L = expand(L);
    Gauss_point = roots(double(coeffs(L,'All')));
    Gauss_point = sort(Gauss_point);
    Gauss_weight = generate_weight(n, Gauss_point);
end

function weight = generate_weight(n, Gauss_point)
    syms x;
    weight = zeros(n+1,1);
    l = Gauss_point;
    for i =1: 1: n+1
        f = prod(x-l)/(x-l(i))/prod(l(i)-l(1:i-1))/prod(l(i)-l(i+1:end));
        weight(i) = int(f,x,-1,1);
    end
end
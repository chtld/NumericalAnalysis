function I = Composite_Gauss(f, a, b, n, Gauss_type)
    [Gauss_weight, Gauss_point] = generate_gauss_weight_point(Gauss_type);
    h = (b-a)/n;
    x = a: h: b;
    I = 0;
    for i = 1: length(x)-1
        [weight, point] = generate_gauss_formula(x(i), x(i+1), Gauss_weight, Gauss_point);
        I = I+weight'*f(point);
    end
end

function [weight, point] = generate_gauss_formula(a, b, Gauss_weight, Gauss_point)
    weight = (b-a)/2*Gauss_weight;
    point = (b-a)/2*Gauss_point+(b+a)/2;
end
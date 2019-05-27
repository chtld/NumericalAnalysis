function Newton(fun, left, right, order1, order2)
for n = order1: order2
    h = (right - left) / n;
    x = left: h: right;
    y = fun(x);
    coef = DiffQuotient(x', y');
    syms t;
    poly = coef(1);
    basis = 1;
    for i = 2: length(x)
        basis = basis * (t - x(i - 1));
        poly = poly + coef(i) * basis;
    end
    simplify(poly);
    z = left: 0.01: right;
    if mod(n, 20) == 0
        hold on;
        plot(z, subs(poly, 't', z), 'b', z, fun(z), 'g');
    end
end
end
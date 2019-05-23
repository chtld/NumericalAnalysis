function [I] = Composite_Trapezoidal(f, a, b, n)
    h = (b-a)/n;
    x = a: h: b;
    I = h/2*(f(a)+2*sum(f(x(2:end-1)))+f(b));
end
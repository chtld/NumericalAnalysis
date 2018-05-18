function L = Legendre(n)
    syms x;
    p0 = 1;
    p1 = x;
    if n==0
        L = p0;
    elseif n==1
        L = p1;
    else
        for i = 2: n
            p = (2*(i-1)+1)/(i-1+1)*x*p1-(i-1)/(i+1-1)*p0;
            p0 = p1;
            p1 = p;
        end
        L = p;
    end
    end
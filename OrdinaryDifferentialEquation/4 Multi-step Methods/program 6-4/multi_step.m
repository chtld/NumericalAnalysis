function [  x, y ] = multi_step( fun, x0, xt, y0, h )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

x = (x0: h: xt);
y = zeros(size(x));
y(1) = y0;

for k = 1: 1: 3
    k1 = feval(fun, x(k), y(k));
    k2 = feval(fun, x(k)+0.5*h, y(k)+0.5*h*k1);
    k3 = feval(fun, x(k)+0.5*h, y(k)+0.5*h*k2);
    k4 = feval(fun, x(k)+h, y(k)+h*k3);
    y(k+1) = y(k)+h/6*(k1+2*k2+2*k3+k4);
end

for k = 4: size(x,2)-1
    y(k+1) = y(k)+h*(55/24*feval(fun,x(k),y(k))-59/24*feval(fun,x(k-1),y(k-1))...
             +37/24*feval(fun,x(k-2),y(k-2))-3/8*feval(fun,x(k-3),y(k-3)));
    y(k+1) = y(k)+h*(251/720*feval(fun,x(k+1),y(k+1))+323/360*feval(fun,x(k),y(k))...
             -11/30*feval(fun,x(k-1),y(k-1))+53/360*feval(fun,x(k-2),y(k-2))-19/720*feval(fun,x(k-3),y(k-3)));
end

end


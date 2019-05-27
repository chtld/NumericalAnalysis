function [  x, y ] = Runge_Kutta( fun, x0, xt, y0, h )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

x = (x0: h: xt);
y = zeros(size(x));
y(1) = y0;
for k = 1: size(x,2)-1
    k1 = feval(fun, x(k), y(k));
    k2 = feval(fun, x(k)+0.5*h, y(k)+0.5*h*k1);
    k3 = feval(fun, x(k)+0.5*h, y(k)+0.5*h*k2);
    k4 = feval(fun, x(k)+h, y(k)+h*k3);
    y(k+1) = y(k)+h/6*(k1+2*k2+2*k3+k4);
end

end


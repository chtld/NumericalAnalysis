function [ x, y ] = improve_euler( fun, x0, xt, y0, h )
%IMPROVEEULER 使用euler法求解常微分方程
%   包含四个输入参数，函数fun,初始时刻x0，终止时刻xt,和初值y0以及步长h

x = (x0: h: xt);
y = zeros(size(x));
y(1) = y0;
for k = 1: size(x,2)-1
    fp = y(k)+h*feval(fun, x(k), y(k));
    fc = y(k)+h*feval(fun, x(k+1), fp);
    y(k+1) = 1/2*(fp + fc);
end

end


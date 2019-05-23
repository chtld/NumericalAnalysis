function [ x, y ] = improve_euler( fun, x0, xt, y0, h )
%IMPROVEEULER ʹ��euler����ⳣ΢�ַ���
%   �����ĸ��������������fun,��ʼʱ��x0����ֹʱ��xt,�ͳ�ֵy0�Լ�����h

x = (x0: h: xt);
y = zeros(size(x));
y(1) = y0;
for k = 1: size(x,2)-1
    fp = y(k)+h*feval(fun, x(k), y(k));
    fc = y(k)+h*feval(fun, x(k+1), fp);
    y(k+1) = 1/2*(fp + fc);
end

end


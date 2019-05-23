function [ x, y ] = explicit_euler( fun, x0, xt, y0, h )
%EULER ʹ��euler����ⳣ΢�ַ���
%   �����ĸ��������������fun,��ʼʱ��x0����ֹʱ��xt,�ͳ�ֵy0�Լ�����h

x = (x0: h: xt);
y = zeros(size(x));
y(1) = y0;
for k = 1: size(x,2)-1
    f = feval(fun, x(k), y(k));
    y(k+1) = y(k)+h*f;
end

end


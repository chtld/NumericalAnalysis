function [ x, y ] = implicit_euler( fun, x0, xt, y0, h, tol )
%EULER ʹ��euler����ⳣ΢�ַ���
%   �����ĸ��������������fun,��ʼʱ��x0����ֹʱ��xt,�ͳ�ֵy0�Լ�����h

x = (x0: h: xt);
y = zeros(size(x));
y(1) = y0;
for k = 1: size(x,2)-1
    y_initial = y(k)+h*feval(fun, x(k), y(k));
    while 1
        y_end = y(k) + h*feval(fun, x(k+1), y_initial);
        if abs(y_end-y_initial)<tol
            break;
        end
        y_initial = y_end;
    end
    y(k+1) = y_end;
end

end


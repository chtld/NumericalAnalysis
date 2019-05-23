clear;
% f = @(x,y) sin(x) + y;
f = @(x,y) -2*y;
x0  = 0;
y0  = 1;
h = 0.01;
xt  = 1;
tol = 0.5e-8;
[x, y]  = Trapezoidal(f, x0, xt, y0, h , tol);

% yy = dsolve('Dy = y + sin(t)','y(0)  = 1'); %���Ž�
yy = dsolve('Dy = -2*y','y(0)  = 1'); %���Ž�
y1 = subs(yy, 't', x);

plot(x, y, '*b', x, y1, 'og');
legend('��ֵ��','������');
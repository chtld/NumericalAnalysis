clear;
% f = @(x,y) sin(x) + y;
f = @(x,y) -y+1;
x0  = 0;
y0  = 0;
h = 0.01;
xt  = 2;
[x, y]  = Runge_Kutta(f, x0, xt, y0, h );

% yy = dsolve('Dy = y + sin(t)','y(0)  = 0'); %·ûºÅ½â
% y1 = subs(yy, 't', x);
yt = 1-exp(-x);
plot(x, y, '*b', x, yt, 'og')
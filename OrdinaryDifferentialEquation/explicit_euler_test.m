clear;
f = @(x,y) sin(x) + y;
x0  = 0;
y0  = 1;
h = 0.2;
xt  = 16;
[x, y]  = explicit_euler(f, x0, xt, y0, h );

yy = dsolve('Dy = y + sin(t)','y(0)  = 0'); %·ûºÅ½â
y1 = subs(yy, 't', x);

plot(x, y, '*b', x, y1, 'og')
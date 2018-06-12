clear;
f = @(x,y) sin(x) + y;
x0  = 0;
y0  = 1;
h = 0.1;
xt  = 1;
[x, y]  = improve_euler(f, x0, xt, y0, h );

yy = dsolve('Dy = y + sin(t)','y(0)  = 1'); %���Ž�
y1 = subs(yy, 't', x);
disp([x', y', double(y1)']);
plot(x, y, '*b', x, y1, 'og')
a = 0.5;
f = @(x) 1./x -a;
df = @(x) -1./x.^2;
g = @(x) x-f(x)./df(x);
x = -20:0.1:20;
plot(x,f(x),'r');%
plot(x,g(x),'b');
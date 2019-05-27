clear all
close all
%初始化
a=-2;
b=2;
w=20;
h=(b-a)/w;
X=a:h:b;
% Y=sin(X);
f = @(x) 1./(1 + 5 .* x.^2);
Y = f(X);
x0=X';
y0=Y';
%计算差商
n=length(x0);
A=zeros(n);
for t=1:n
    A(t,1)=y0(t,1);
end
for j=2:n
    b=1;
    for i=j:n
        c1=x0(b,1);
        c2=x0(b+j-1,1);
        A(i,j)=(A(i-1,j-1)-A(i,j-1))/(c1-c2);
        b=b+1;
    end
end
%
syms x;
x1=x-x0;
x2=prod(x1);
D=diag(A);
for i=n:-1:1
    x1(i)=x2/x1(i);
    x2=x1(i);
end
y=x1'*D;
%计算牛顿插值多项式
xh=a:0.01:b;
yh=zeros(1,(b-a)/0.1+1);
for i=1:length(xh)
    yh(i)=subs(y,'x',xh(i));
end
hold on;
plot(xh,yh);
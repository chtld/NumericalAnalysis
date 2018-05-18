clc;
clear;
format long;
x1=1;
y1=1;
x2=0;
y2=0;
g=9.8;
w=1;
k=w*w/g;
a=k+0.001;
syms m;
f=exp(m*(x1+x2))*cos(m*(y1-y2))/(m-k);
% int_f=int(f,1,inf)
% integral(@(m) exp(m.*(x1+x2)).*cos(m.*(y1-y2))./(m-k),1,inf);
I = IntGaussLager(f,5);
fprintf('%f\n',I);
function I = IntGaussLager(f,n,AK,XK)
if(n<6 && nargin == 2)
    AK = 0;
    XK = 0;
else
    I=sum(AK.*subs(sym(f),findsym(sym(f)),XK));
end

switch n
    case 2
        I=0.853553*subs(sym(f),symvar(sym(f)),-0.585786)+...
            0.146447*subs(sym(f),symvar(sym(f)),3.414214);

    case 3
        I=0.711093*subs(sym(f),symvar(sym(f)),0.415575)+...
            0.278518*subs(sym(f),symvar(sym(f)),2.294280)+...
            0.0103893*subs(sym(f),symvar(sym(f)),6.289945);

    case 4
        I=0.603154*subs(sym(f),symvar(sym(f)),0.322548)+...
            0.357419*subs(sym(f),symvar(sym(f)),1.745761)+...
            0.0388879*subs(sym(f),symvar(sym(f)),4.536620)+...
            0.000539295*subs(sym(f),symvar(sym(f)),9.395071);

    case 5
        I=0.521756*subs(sym(f),symvar(sym(f)),0.263560)+...
            0.398667*subs(sym(f),symvar(sym(f)),1.413403)+...
            0.0759424*subs(sym(f),symvar(sym(f)),3.596426)+...
            0.00361176*subs(sym(f),symvar(sym(f)),7.085810)+...
            0.0000233700*subs(sym(f),symvar(sym(f)),12.640801);  
end
end
function [ x0,y0 ] = Generate_Data(np)
a=-5;
b=5;
h=(b-a)/np;
x0=a:h:b;
y0=1./(1+5*x0.^2);
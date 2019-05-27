clc;
clear all;
format long;
x0=[4;9;16];
y0=[2;3;4];
x1=[1;4;9];
y1=[1;2;3];
x=7;
y_lag1=lagrange(x0,y0,x);
disp('example1.1:')
disp(['when x= ',num2str(x)]);
disp(['y= ',num2str(y_lag1)]); 

y_lag2=lagrange(x1,y1,x);
disp('example1.2:')
disp(['when x= ',num2str(x)]);
disp(['y= ',num2str(y_lag2)]); 



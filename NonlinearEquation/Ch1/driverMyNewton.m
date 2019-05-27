% This is the driver file for MyNewton.
% Input:
% x1              Initial guess 
% fun             function
% dfun            derivative of the function
% tol             Allowable tolerance in computed zero
% max             Maximum number of iterations
% Output:
% x               Approximated solution x
% y               fun(x)

clear;
close all;
clc
format shortE;
a = 0.5;
x1 = 1e-10;
tol = 1e-6;
max = 100;
fun = @(x) 1/x-a;
dfun = @(x)-1/x^2;

[x, y] = MyNewton(fun, dfun, x1, tol, max, a);
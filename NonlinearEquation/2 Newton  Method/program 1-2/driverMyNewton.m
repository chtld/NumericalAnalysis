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

x1 = 1;
tol = 1e-2;
max = 20;
fun = @cos;
dfun = @(x)-sin(x);

[x, y] = MyNewton(fun, dfun, x1, tol, max);
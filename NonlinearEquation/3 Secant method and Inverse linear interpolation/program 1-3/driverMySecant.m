% This is the driver file for MySecant.
% Input:
% [a, b]          Initial guess 
% fun             function
% tol             Allowable tolerance in computed zero
% max             Maximum number of iterations
% Output:
% x               Approximated solution x
% y               fun(x)

clear;
close all;
clc

a = 1;
b = 2;
tol = 1e-2;
max = 20;
fun = 'cos';

[x, y] = MySecant(fun, a, b, tol, max);
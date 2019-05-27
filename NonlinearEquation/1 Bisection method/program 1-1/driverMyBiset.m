% This is the driver file for MyBisect.
% Input:
% [a, b]          Initial interval 
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

[x, y] = MyBisect(fun, a, b, tol, max);
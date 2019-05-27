% This is the driver file for MyFpi.
% Input:
% a          Initial interval 
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
tol = 1e-8;
max = 20;
fun =@(x) (2/x+x)/2;

[x, y] = MyFpi(fun, a, tol, max);
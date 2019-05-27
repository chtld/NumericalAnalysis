% This is the driver file for MyCholesky.
% Input:
% A               n by n symmetric matrix
% Output:
% L               n by n lower triangular matrix

clear;
close all;
clc

A = [4 2 1; 2 3 1; 1 1 4];

[L] = MyCholesky(A)
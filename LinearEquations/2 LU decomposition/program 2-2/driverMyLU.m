% This is the driver file for MyLU.
% Input:
% A               n by n coefficient matrix
% Output:
% L               n by n lower triangular matrix
% U               n by n upper triangular matrix

clear;
close all;
clc

A = [4 5 6; 2 3.5 1; -1 -1 2];

[L, U] = MyLU(A)
% This is the driver file for MyLU.
% Input:
% A               n by n coefficient matrix
% Output:
% L               n by n lower triangular matrix
% U               n by n upper triangular matrix

clear;
close all;
clc

A = [1 2 2; 4 4 12; 4 8 12];

[L, U] = MyLU(A)
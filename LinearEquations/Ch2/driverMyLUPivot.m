% This is the driver file for MyLUPivot.
% Input:
% A               n by n coefficient matrix
% Output:
% L               n by n lower triangular matrix
% U               n by n upper triangular matrix
% P               n by n permutation matrix

clear;
close all;
clc

A = [1 2 3; 4 5 6; 7 8 9];

[L, U, P] = MyLUPivot(A)
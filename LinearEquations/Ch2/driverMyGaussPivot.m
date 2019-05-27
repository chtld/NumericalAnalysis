% This is the driver file for MyGauss.
% Input:
% A               n by p coefficient matrix
% b               n by 1 right-hand-side matrix
% Output:
% x               p by 1 solution matrix

clear;
close all;
clc

% A = [1 1 1 1; 1 -2 -2 -2; 1 4 -4 1; 1 -5 -5 -3];
% b = [0 4 2 -4]';

% A = [4 2; 2 4];
% b = [6; 6];

% A = [0.007 -0.8; -0.1 10];
% b = [0.7; 10];

A = [1 2 2; 4 4 12; 4 8 12];
b = [1; 12; 8];

x = MyGaussPivot(A, b)
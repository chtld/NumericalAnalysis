clc
clear
format long
% A = [4 3 0; 3 4 -1; 0 -1 4];
% b = [24 30 -24]';
% x0 = [1 1 1]';
% A = [4 2 1; 1 3 1; 1 1 4];
% b = [3, -1, 4]';
% x0 = zeros(3,1);
% A = [4, -1, 0, 0; -1, 4, -1, 0; 0, -1, 4, -1; 0, 0, -1, 4];
% b = [5.84 -5.5 7.33 3.35]';
% A = [3, -1, 1; 3, 6, 2; 3, 3 ,7];
% b = [1, 0, 4]';
% A = [10, 5, 0, 0; 5, 10, -4, 0; 0, -4, 8, -1; 0, 0, -1, 5];
% b = [6, 25, -11, -11]';
A = [4 -1 0 -1 0 0;
    -1 4 -1 0 -1 0; 
    0 -1 4 0 0 -1; 
    -1 0 0 4 -1 0; 
    0 -1 0 -4 4 -1;
    0 0 -1 0 -1 4];
b =[0 5 0 6 -2 6]';
x0 = zeros(size(A,1),1);
max = 100;
tol = 1e-5;
omega = 1.22;
[x, error, iter] = Jacobi(A, b, x0, tol, max);
fprintf('Jacobi iteratioon result:\n');
disp([(1:iter)' x(1:iter,:)]);
fprintf('error = %f, iter = %f\n', error, iter);
[x, error, iter] = Gauss_Seidel(A, b, x0, tol, max);
fprintf('Gauss_Seidel iteratioon result:\n');
disp([(1:iter)' x(1:iter,:)]);
fprintf('error = %f, iter = %f\n', error, iter);
[x, error, iter] = SOR(A, b, x0, omega, tol, max);
fprintf('SOR iteratioon result:\n');
disp([(1:iter)' x(1:iter,:)]);
fprintf('error = %f, iter = %f\n', error, iter);
z = A\b
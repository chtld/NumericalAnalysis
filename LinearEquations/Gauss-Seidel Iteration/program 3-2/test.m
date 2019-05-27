clc
clear
% A = [4 2 1; 1 3 1; 1 1 4];
% b = [3, -1, 4]';
% x0 = zeros(3,1);
A = [4, -1, 0, 0; -1, 4, -1, 0; 0, -1, 4, -1; 0, 0, -1, 4];
b = [5.84 -5.5 7.33 3.35]';
x0 = zeros(size(A,1),1);
max = 100;
tol = 1e-6;
omega = 1.05;
[x, error, iter] = Jacobi(A, b, x0, tol, max);
fprintf('Jacobi iteratioon result:\n');
disp([x]);
fprintf('error = %f, iter = %f\n', error, iter);
[x, error, iter] = Gauss_Seidel(A, b, x0, tol, max);
fprintf('Gauss_Seidel iteratioon result:\n');
disp([x]);
fprintf('error = %f, iter = %f\n', error, iter);
[x, error, iter] = SOR(A, b, x0, omega, tol, max);
fprintf('SOR iteratioon result:\n');
disp([x]);
fprintf('error = %f, iter = %f\n', error, iter);
z = A\b;
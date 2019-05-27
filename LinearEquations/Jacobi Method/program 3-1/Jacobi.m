function [x1, eor, iterations] = Jacobi( A, b, x0, tol, Max_iterations)
%JACOBI Jacobi迭代求解线性方程组
%   此处显示详细说明
% [m, n] = size(A);
if nargin < 5
    Max_iterations = 500;
elseif nargin <4
    tol = 1e-6;
elseif nargin <3
    x0 = zeros(size(A,1),1);
elseif nargin<2 || nargin>6
    error('Input error!');
end
L = tril(A, -1);
D = diag(diag(A));
U = triu(A, 1);
E = -inv(D)*(L+U);
f = inv(D)*b;
for i = 1: Max_iterations
    x1 = E*x0+f;
    eor = norm(x1-x0,1);
    if(eor < tol)
        fprintf('The iteration convergened.\n');
        break; 
    end
    x0 = x1;
end

if(i == Max_iterations)
    fprintf('Reached max iterations.\n');
end
iterations = i;
end


function [X, eor, iterations] = SOR( A, b, x0, omega, tol, Max_iterations)
%JACOBI Jacobi迭代求解线性方程组
%   此处显示详细说明
% [m, n] = size(A);
if nargin<6
    Max_iterations = 500;
elseif nargin < 5
    tol = 1e-6;
elseif nargin <4
    omega = 1.6;
elseif nargin <3
    x0 = zeros(size(A,1),1);
elseif nargin<2 || nargin>7
    error('Input error!');
end
X = zeros(Max_iterations,size(A,1));
L = tril(A, -1);
D = diag(diag(A));
U = triu(A, 1);
E = inv(D+omega*L)*((1-omega)*D-omega*U);
f = omega*inv(D+omega*L)*b;
for i = 1: Max_iterations
    x1 = E*x0+f;
    X(i,:) = x1;
    eor = norm(x1-x0,2);
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


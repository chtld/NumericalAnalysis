function [x] = MyGauss(A, b)
% This is the code for Gaussian Elimination without Pivoting.
% Input:
% A               n by p coefficient matrix
% b               n by 1 right-hand-side matrix
% Output:
% x               p by 1 solution matrix

% Get size of input
[n, p] = size(A); 

% Check for zero diagonal elements
if any(diag(A) == 0)
    error('Division by zero will occur.')
end

% Gaussian elemination process.
for k = 1 : n-1
    for i = k+1 : n
        m = A(i, k)/A(k, k);
        for j = k : n
            A(i, j) = A(i, j) - m*A(k, j);
        end
        b(i) = b(i) - m*b(k);
    end
end

% Backward substitution
x(n) = b(n) / A(n,n);

for i = n-1 : -1 : 1
    for j = i+1 : n
        b(i) = b(i) - A(i, j)*x(j);
    end
    x(i) = b(i)/A(i, i);
end
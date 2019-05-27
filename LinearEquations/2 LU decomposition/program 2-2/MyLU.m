function [L, U] = MyLU(A)
% This is the code for LU Decompsition without Pivoting. A = LU.
% Input:
% A               n by n coefficient matrix
% Output:
% L               n by n lower triangular matrix
% U               n by n upper triangular matrix

% Get size of input.
[n, n] = size(A); 

% Initialize matrices.
L = eye(n);
U = A;

% LU Decomposition.
for j = 1 : n
    for i = j+1 : n
        L(i, j) = U(i, j) / U(j, j);
        U(i, :) = U(i, :) - L(i, j)*U(j, :);
    end
end

% Display L and U
L
U

% Verify results
B = L*U
A

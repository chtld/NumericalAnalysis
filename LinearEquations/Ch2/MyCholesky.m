function [L] = MyCholesky(A)
% This is the code for Cholesly Decomposition. A = LL^{T}.
% Input:
% A               n by n symmetric matrix
% Output:
% L               n by n lower triangular matrix

% Get size of input.
[n, n] = size(A); 

% Initialize matrices.
L = zeros(n);

% Cholesky Decomposition.
for j = 1 : n
    L(j, j) = sqrt(A(j, j) - L(j, 1:j-1)*L(j, 1:j-1)');
    for i = j+1 : n
        L(i, j) = (A(i, j) - L(i, 1:j-1)*L(j, 1:j-1)')/L(j, j);
    end
end
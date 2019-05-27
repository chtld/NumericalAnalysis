function [L, U, P] = MyLUPivot(A)
% This is the code for LU Decompsition with Pivoting. PA = LU.
% Input:
% A               n by n coefficient matrix
% Output:
% L               n by n lower triangular matrix
% U               n by n upper triangular matrix
% P               n by n permutation matrix

% Get size of input.
[n, n] = size(A); 

% Initialize matrices.
L = eye(n);
U = A;
P = eye(n);

% LU Decomposition.
for j = 1 : n
    [pivot, k] = max(abs(U(j:n, j)));
    % Swap the rows if necessary.
    if k > 1
        temp1 = U(j,:); temp2 = P(j, :);
        U(j, :) = U(j+k-1, :); P(j, :) = P(j+k-1, :);
        U(j+k-1, :) = temp1; P(j+k-1, :) = temp2;
        if j >= 2
            temp3 = L(j, 1:j-1);
            L(j, 1:j-1) = L(j+k-1, 1:j-1);
            L(j+k-1, 1:j-1) = temp3;
        end
    end
    for i = j+1 : n
        L(i, j) = U(i, j) / U(j, j);
        U(i, :) = U(i, :) - L(i, j)*U(j, :);
    end
end

% Display L and U
L
U

% Verify results
LU = L*U
PA = P*A

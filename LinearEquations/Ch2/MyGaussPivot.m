function [x] = MyGaussPivot(A, b)
% This is the code for Gaussian Elimination with Row Pivoting.
% Input:
% A               n by p coefficient matrix
% b               n by 1 right-hand-side matrix
% Output:
% x               p by 1 solution matrix

% Get size of input
[n, p] = size(A); 

for j = 1 : n-1
    % Find position of largest entry in each column below current row.
    % Note: k is position of pivot, relative to row i.
    [pivot, k] = max(abs(A(j:n, j))); 
    % Check if there is zero entry in pivot.
    if any(pivot == 0)
        error('No unique solution\n');
    end

    % Swap the rows if necessary.
    if k > 1
        temp1 = A(j,:); temp2 = b(j);
        A(j, :) = A(j+k-1, :); b(j) = b(j+k-1);
        A(j+k-1, :) = temp1; b(j+k-1) = temp2;
    end

    % Gaussian elemination process.
    for i = j+1 : n
        m = A(i, j)/A(j, j);
        A(i, :) = A(i, :) - m*A(j, :);
        b(i) = b(i) - m*b(j);
    end
end

% Check if A(n, n) is zero and backward substitution.
if A(n, n) == 0
    error('No unique solution\n');
else
    x(n) = b(n) / A(n,n);
end;

for i = n-1 : -1 : 1
    for j = i+1 : n
        b(i) = b(i) - A(i, j)*x(j);
    end
    x(i) = b(i)/A(i, i);
end
A = [ 2 1 -2; 4 5 -3; -2 5 3];
[L, U] = LUdecomposition(A);
disp([L      U]);

function [L, U] = LUdecomposition(A)
    [m, n] = size(A);
    L = eye(n,n);
    U = zeros(n,n);
    for i = 1: 1: n-1
        for j = i: 1: n
            U(i, j) = A(i, j) - L(i, 1: i-1)*U(1: i-1, j); 
        end
        for j = i+1: 1: n
            L(j, i) = 1/U(i,i)*(A(j, i) - L(j, 1: i-1)*U(1: i-1, i));
        end
%         U(i, 1: n) = A(i, 1: n) - L(i, 1: i-1)*U(1: i-1, 1: n);
%         L(i+1: n, i) = 1/U(i,i)*(A(i+1: n, i) - L(i+1: n, 1: i-1)*U(1: i-1, i));
    end
    U(n,n) = A(n,n) - L(n, 1: n-1)*U(1: n-1, n);
end
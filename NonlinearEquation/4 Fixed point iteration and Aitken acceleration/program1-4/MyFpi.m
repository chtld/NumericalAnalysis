function [x, y] = MySecant(fun, a0, tol, max)
% This is the code for Fixed point iteration.
% Input:
% a0        Initial guess 
% fun             function
% tol             Allowable tolerance in successive iterates
% max             Maximum number of iterations
% Output:
% x               Vector of approximations to zero
% y               Vector of function values, fun(x)

% Preallocate vectors.
x = zeros(max, 1); 
y = zeros(max, 1);

% Set an intial interval.
x(1) = a0;;

% Secant search
for i = 1 : max
    x(i+1) = fun(x(i));
    if (abs(x(i+1) - x(i)) < tol)
        fprintf('Secant method has converged\n'); 
        break;
    end 
    iter = i+1;
end

if (iter > (max+1))
    fprintf('Zero not found to desired tolerance within the maximum number of iterations\n');
    iter=iter-1;
end

% Output results
k = 1:iter;
fprintf('     iter        x\n');
disp([k' x(1:iter) y(1:iter)]);
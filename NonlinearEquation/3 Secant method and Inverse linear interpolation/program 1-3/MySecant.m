function [x, y] = MySecant(fun, a0, b0, tol, max)
% This is the code for Secant method.
% Input:
% [a0, b0]        Initial guess 
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
x(1) = a0; x(2) = b0;
y(1) = feval(fun, x(1)); y(2) = feval(fun, x(2));

% Secant search
for i = 2 : max
    x(i+1) = x(i) - y(i)*(x(i) - x(i-1))/(y(i) - y(i-1));
    y(i+1) = feval(fun, x(i+1));
    if y(i) == 0
        fprintf('Exact solution found\n'); 
        break;
    end
    if (abs(x(i+1) - x(i)) < tol)
        fprintf('Secant method has converged\n'); 
        break;
    end 
    iter = i+2;
end

if (iter > (max+1))
    fprintf('Zero not found to desired tolerance within the maximum number of iterations\n');
end

% Output results
k = 1:iter;
fprintf('     iter        x         y\n');
disp([k' x(1:iter) y(1:iter)]);
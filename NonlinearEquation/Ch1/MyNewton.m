function [x, y] = MyNewton(fun, dfun, x1, tol, max, a)
% This is the code for Newton's method.
% Input:
% x1              Initial guess 
% fun             function
% dfun            derivative of the function
% tol             Allowable tolerance in computed zero
% max             Maximum number of iterations
% Output:
% x               Vector of approximations to zero
% y               Vector of function values, fun(x)

% Preallocate vectors.
x = zeros(max, 1); 
y = zeros(max, 1);
dy = zeros(max, 1);
rapid = zeros(max, 1);

% Set an intial interval.
x(1) = x1;
y(1) = feval(fun, x(1));
dy(1) = feval(dfun, x(1));

% Newton search
for i = 2 : max
    x(i) = x(i-1) - y(i-1)/dy(i-1);
    rapid(i) = abs(x(i)-1/a)/abs(x(i-1)-1/a)^2;
    y(i) = feval(fun, x(i));
    if y(i) == 0
        fprintf('Exact solution found\n'); 
        break;
    end
    if (abs(x(i) - 1/a) < tol)
        fprintf('Newton method has converged\n'); 
        break;
    end 
    dy(i) = feval(dfun, x(i));
    iter = i+1;
end

if (iter > max)
    fprintf('Zero not found to desired tolerance within the maximum number of iterations\n');
end
iter = iter-1;
% Output results
k = 1:iter;
fprintf('     iter        x         y      rapid\n');
disp([k' x(1:iter) y(1:iter) rapid(1:iter)]);
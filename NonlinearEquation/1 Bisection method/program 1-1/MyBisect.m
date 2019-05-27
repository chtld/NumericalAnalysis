function [x, y] = MyBisect(fun, a0, b0, tol, max)
% This is the code for Bisection method.
% Input:
% [a0, b0]        Initial interval 
% fun             function
% tol             Allowable tolerance in computed zero
% max             Maximum number of iterations
% Output:
% x               Vector of approximations to zero
% y               Vector of function values, fun(x)

% Preallocate vectors.
x = zeros(max, 1); 
y = zeros(max, 1);
a = zeros(max, 1); 
b = zeros(max, 1);
ya = zeros(max, 1); 
yb = zeros(max, 1);

% Set an intial interval.
a(1) = a0; b(1) = b0;
ya(1) = feval(fun, a(1)); yb(1) = feval(fun, b(1));

% Check whether the intial interval is a bracket.
if ya(1)*yb(1) > 0
    error('Function has same sign at end points\n');
end

% Bisection search
for i = 1 : max
    x(i) = (a(i) + b(i))/2; 
    y(i) = feval(fun, x(i));
    if (x(i) - a(i) < tol)
        fprintf('Bisection method has converged\n'); 
        break;
    end 
    if y(i) == 0
        fprintf('Exact solution found\n'); 
        break;
    elseif y(i)*ya(i) < 0
        a(i+1) = a(i); ya(i+1) = ya(i); 
        b(i+1) = x(i); yb(i+1) = y(i);
    else
        a(i+1) = x(i); ya(i+1) = y(i); 
        b(i+1) = b(i); yb(i+1) = yb(i);
    end
    iter = i+1;
end

if (iter > max)
    fprintf('Zero not found to desired tolerance within the maximum number of iterations\n');
end

% Output results
k = 1:iter;
fprintf('     iter        a         b         x         y\n');
disp([k' a(1:iter) b(1:iter) x(1:iter) y(1:iter)]);
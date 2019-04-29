format long;
%f = @(x) cos(x)-x;
%f = @(x) cos(x);
%f = @(x) 5*x^7+2*x-1;
%f = @(x) cos(5*x);
%f = @(x) x^2-5;
%f = @(x) 1/x^3-10;
%f = @(x) sin(x);
%f = @(x) exp(x)-4*x;
%f = @(x) cos(sin(x))-0.75;
left = 0.;
right = 4.5;
epsilon = 0.0001;
max_iterations = 4;
[root, iterations, tol] = bisection_method(f, left, right, epsilon, max_iterations);
fprintf('The solution of this equation is : %f\n',root);
fprintf('The number of this iterations is : %d\n',iterations);
fprintf('The length of the interval is : %f\n',tol);


function [result, iterations, tol] = bisection_method(function_f, left, right, epsilon, max_iterations)
% This function has four input parameter, and return the root of f(x)=0
% input:
%     function_f is the function f(x) = 0 you want to solve
%     left is the left end of the interval
%     right is the right end of the interval
%     epsilon is the precision accuracy
%     maxiterations is the maximum number of interations
% output:
%     result is the root of the equation f(x)=0
%     iterations is the number of iterations
%     tol is the length of the last interval
    f = function_f;
    iterations = 0;
    tol = right-left;
    if(f(left)==0)
        result = left;
        return;
    elseif(f(right)==0)
        result = right;
        return;
    else
        middle = (left + right)/2;
    end
    iterations = 1;
    while(abs(f(middle))>epsilon && iterations<=max_iterations && tol>epsilon)
        if(f(left)*f(middle)<0)
            right = middle;
        end
        if(f(middle)*f(right)<0)
            left = middle;
        end
        if(f(middle) == 0)
            result = middle;
            return;
        end
        middle = (left + right)/2;
        iterations = iterations + 1;
    end
    tol = right - left;
    result = middle;
end

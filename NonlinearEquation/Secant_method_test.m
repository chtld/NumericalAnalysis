format long;
%f=@(x) cos(x)-x;
f=@(x) cos(x);
left = 0;
right = 1;
epsilon = 0.0001;
[root, iterations, tol] = Secant(f, left, right, epsilon);
fprintf('The solution of this equation is : %f\n',root);
fprintf('The number of this iterations is : %d\n',iterations);
fprintf('The length of the interval is : %f\n',tol);


function [result, iterations, tol] = Secant(function_f, left, right, epsilon)
% This function has four input parameter, and return the root of f(x)=0
% input:
%     function_f is the function f(x) = 0 you want to solve
%     left is the left end of the interval
%     right is the right end of the interval
%     epsilon is the precision accuracy
% output:
%     result is the root of the equation f(x)=0
%     iterations is the number of iterations
%     tol is the length of the last interval
    iterations = 0;
    tol = right-left;
    f = function_f;
    if(f(left)==0)
        result = left;
        return;
    elseif(f(right)==0)
        result = right;
        return;
    else
        x0 = left;
        x1 = right;
        x2 = x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
    end
    iterations = 1;
    while(abs(f(x2))>epsilon)
        if(x2>x1)
            x0 = x1;
            x1 = x2;
        else
            x0 = x2;
        end
        x2 = x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
        iterations = iterations + 1;
    end
    tol = abs(x0 - x1);
    result = x2;
end

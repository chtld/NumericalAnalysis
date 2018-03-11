format long;
%f=@(x) cos(x)-x;
f=@(x) cos(x);
left = 0;
right = 1.6;
epsilon = 0.0001;
root = Inverse_Linear_Interpolation(f, left, right, epsilon);
fprintf('The solution of this equation is : %f\n',root);


function [result] = Inverse_Linear_Interpolation(function_f, left, right, epsilon)
% This function has four input parameter, and return the root of f(x)=0
% input:
%     function_f is the function f(x) = 0 you want to solve
%     left is the left end of the interval
%     right is the right end of the interval
%     epsilon is the precision accuracy
% output:
%     result is the root of the equation f(x)=0
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
        x2 = x1-f(x1)*(f(x1)-f(x0))/(x1-x0);
    end
    while(abs(f(x2))>epsilon)
        x0 = x2;
        x2 = x1-f(x1)*(f(x1)-f(x0))/(x1-x0);
    end
    result = x2;
end

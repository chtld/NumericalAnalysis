format long;
%f=@(x) cos(x)-x;
f=@(x) cos(x);
g=@(x) -sin(x);
x0 = 1;
epsilon = 0.0001;
root = Newton_Method(f, g, x0, epsilon);
fprintf('The solution of this equation is : %f\n',root);


function [result, iterations] = Newton_Method(function_f, function_g, x0, epsilon)
% This function has four input parameter, and return the root of f(x)=0
% input:
%     function_f is the function f(x) = 0 you want to solve
%     function_g is the deriative function of f(x)
%     x0 is the initial value
%     epsilon is the precision accuracy
% output:
%     result is the root of the equation f(x)=0
%     iterations is the number of iterations
    f = function_f;
    g = function_g;
    interations = 0;
    while(abs(f(x0)) > epsilon)
        x0 = x0 - f(x0)/g(x0);
        iterations = interations+1;
    end
    result = x0;
end

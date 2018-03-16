format long;
%f = @(x) cos(x)-x;
%f = @(x) cos(x);
%f = @(x) x^2;
%f = @(x) 4/3*exp(2-x/2)*(1+1/x*log10(x));
%f = @(x) (20*x-1)/(19*x);
%f = @(x) 2-exp(x);
%f = @(x) x^2;
%f = @(x) atan(x);
f = @(x) x^3+x^2-3*x-3;
f1 = @(x) (x^3+x^2-3)/3;
f2 = @(x) (-1+(3*x+3)/x^2);
f3 = @(x) (3+3*x-x^2)^(1/3);
f4 = @(x) ((3+3*x-x^2)/x)^(1/2);
f5 = @(x) (x-(x^3+x^2-3*x-3)/(3*x^2+2*x-3));
x0 = 1.;
epsilon = 1e-6;
max_iterations = 100;
root = fixedPoint(f1, x0, epsilon, max_iterations);
fprintf('The solution of this equation is : %f\n',root);
root = fixedPoint(f2, x0, epsilon, max_iterations);
fprintf('The solution of this equation is : %f\n',root);
root = fixedPoint(f3, x0, epsilon, max_iterations);
fprintf('The solution of this equation is : %f\n',root);
root = fixedPoint(f4, x0, epsilon, max_iterations);
fprintf('The solution of this equation is : %f\n',root);
root = fixedPoint(f5, x0, epsilon, max_iterations);
fprintf('The solution of this equation is : %f\n',root);


function [result, iterations] = fixedPoint(function_f, x0, epsilon, max_iterations)
% This function has four input parameter, and return the root of f(x)=0
% input:
%     function_f is the function f(x) = 0 you want to solve
%     function_g is the deriative function of f(x)
%     x0 is the initial value
%     epsilon is the precision accuracy
% output:
%     result is the root of the equation f(x)=0
%     iterations is the number of iterations
%     syms x;
    f = function_f;
%     g = diff(f, 1);
%     f = matlabFunction(f);%符号函数转匿名函数
%     g = matlabFunction(g);
    iterations = 1;
    fprintf('iterations      result\n');
    x1 = feval(f,x0);
    fprintf('%d     %f\n',0,x0);
    while(abs(x1 - x0) > epsilon && iterations < max_iterations)
        x0 = x1;
        x1 = feval(f,x0);
        fprintf('%d     %f\n',iterations,x0);
        iterations = iterations+1;
    end
    result = x0;
end

function [L,U]=Thomas(A,b)
% This is the code for Thomas method.
% input :
%A                  n by n coefficient matrix
%b                  n by 1 right-hand-side matrix
%output:
% L                 n by n lower triangular matrix
% U                 n by n upper triangular matrix

% get size of input b.
n=length(b);

% initialize matrixes
U=zeros(n);
L=eye(n);
y=zeros(n,1);
x=y;

% the first step is chase
U(1,1)=A(1,1);
y(1)=b(1);
for i=2:n
    
    L(i,i-1)=A(i,i-1)/U(i-1,i-1);
    U(i,i)=A(i,i)-L(i,i-1)*A(i-1,i);
    y(i)=b(i)-L(i,i-1)*y(i-1);
    U(i-1,i)=A(i-1,i);
end
y
% the second step is catch
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
    x(i)=(y(i)-A(i,i+1)*x(i+1))/U(i,i);
end
x

% display the result L and U;
L
U
% Verify results
B=L*U
A



    

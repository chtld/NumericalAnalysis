clear
n = 8;
A = zeros(n,n+1);
for i =1: 1: n
    A(i,1:i+1)=Newton_Cotes(i);
end
disp(A);
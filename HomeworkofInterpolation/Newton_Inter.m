function y=Newton_Inter(x0,y0,x)
%Newton插值方法，给定一系列的点x0,y0，得到在x=处的，牛顿插值多项的值y
n = length(x0);
Diff = zeros(n); %定义差商表
Diff(:,1)=y0; %差商表第一列为y
for i=2:n
    Diff(i,2)=(Diff(i,1)-Diff(i-1,1))/(x0(i)-x0(i-1));
end
for j=3:n %j为列标
    for i=j:n %i为行标
        Diff(i,j)=(Diff(i,j-1)-Diff(i-1,j-1))/(x0(i)-x0(1)); %计算差商表
    end
end
%根据差商表,求对应的牛顿插值多项式在x处的值y
N(1)=Diff(1,1);
for j=2:n
    T=1;
    for i=1:j-1
        T=T*(x-x0(i));
    end
    N(j)=Diff(j,j)*T;
end
y=sum(N);
%将x带入牛顿插值多项式，得到的y的值

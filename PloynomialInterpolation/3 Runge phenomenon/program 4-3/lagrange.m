function [y]=lagrange(x0,y0,x)
%x0:插值节点
%y0:插值节点的函数数值
%x:表示需要计算的点
m=length(x0);
sum=0;
    for j=1:m
        p=1;
        for k=1:m
            if k~=j
                p=p*(x-x0(k))/(x0(j)-x0(k)); %计算项系数
            end
        end
        sum=p*y0(j)+sum; %将此次计算的项累积进各项之和'sumpol'
    end
y=sum; %将各项之和赋值给y
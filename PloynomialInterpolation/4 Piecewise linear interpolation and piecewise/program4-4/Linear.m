function yy = Linear(x,y,xx)  
%x是已知数据点的x值  
%y是已知数据点的y值  
%是待插入点的横坐标值  
%假设输入的样本点的x值是依次增大的  
syms t;  
if(length(x)==length(y))  
    n=length(x);  
else  
    disp('x和y维数不相等！');  
    return;  
end  
  
for i=1:n-1  
    %     disp(['区间为',num2str(x(i)),'-',num2str(x(i+1))]);  
    yy(i)=((t-x(i+1))/(x(i)-x(i+1)))*y(i)+((t-x(i))/(x(i+1)-x(i)))*y(i+1);  
end  
  
if(nargin==3)  
   nn=length(xx);  
for i=1:nn  
    for j=1:n-1  
        if(xx(i)>x(j)&xx(i)<=x(j+1))  
             yynum(i)=subs(yy(j),'t',xx(i));   %计算插值点的函数值.subs是替换函数，把x0用t替换  
        end  
    end  
end      
yy=yynum;  
else  
    yy=collect(yy);          %将插值多项式展开  
    yy=vpa(yy,6);            %将插值多项式的系数化成6位精度的小数  
end  
end 
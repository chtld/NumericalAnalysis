function yy = Linear(x,y,xx)  
%x����֪���ݵ��xֵ  
%y����֪���ݵ��yֵ  
%�Ǵ������ĺ�����ֵ  
%����������������xֵ�����������  
syms t;  
if(length(x)==length(y))  
    n=length(x);  
else  
    disp('x��yά������ȣ�');  
    return;  
end  
  
for i=1:n-1  
    %     disp(['����Ϊ',num2str(x(i)),'-',num2str(x(i+1))]);  
    yy(i)=((t-x(i+1))/(x(i)-x(i+1)))*y(i)+((t-x(i))/(x(i+1)-x(i)))*y(i+1);  
end  
  
if(nargin==3)  
   nn=length(xx);  
for i=1:nn  
    for j=1:n-1  
        if(xx(i)>x(j)&xx(i)<=x(j+1))  
             yynum(i)=subs(yy(j),'t',xx(i));   %�����ֵ��ĺ���ֵ.subs���滻��������x0��t�滻  
        end  
    end  
end      
yy=yynum;  
else  
    yy=collect(yy);          %����ֵ����ʽչ��  
    yy=vpa(yy,6);            %����ֵ����ʽ��ϵ������6λ���ȵ�С��  
end  
end 
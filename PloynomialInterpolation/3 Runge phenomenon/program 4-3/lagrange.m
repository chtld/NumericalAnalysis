function [y]=lagrange(x0,y0,x)
%x0:��ֵ�ڵ�
%y0:��ֵ�ڵ�ĺ�����ֵ
%x:��ʾ��Ҫ����ĵ�
m=length(x0);
sum=0;
    for j=1:m
        p=1;
        for k=1:m
            if k~=j
                p=p*(x-x0(k))/(x0(j)-x0(k)); %������ϵ��
            end
        end
        sum=p*y0(j)+sum; %���˴μ�������ۻ�������֮��'sumpol'
    end
y=sum; %������֮�͸�ֵ��y
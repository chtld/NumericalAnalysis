clear all
close all
%��ȡexcel��񲢳�ʼ��
a=xlsread('exam1.xlsx');
x=10*a(i,:);
y=a(i,:);
n=length(x);
A=zeros(n,n);
for t=1:n
A(t,1)=y(t,1);
end
% �������
for j=2:n
    b=1;
    for i=j:n
        c1=x(b,1);
        c2=x(b+j-1,1);
        A(i,j)=(A(i-1,j-1)-A(i,j-1))/(c1-c2);
        b=b+1;
    end
end
%txt�Ķ�д,�����̱���
fid=fopen('result.txt','w');
for p=1:n
    for q=1:n
        if q==n
           fprintf(fid,'%9.5f\n',A(p,q));
        else
            fprintf(fid,'%9.5f\t',A(p,q));
        end
    end
end
fclose(fid);
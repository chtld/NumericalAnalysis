function [lamda,uk]=powerz(A,u0,err)
% u0�ǳ�ʼ����
%����ֵ��lamdaΪ������ֵ��ukΪlamda��Ӧ����������
[m,n]=size(A);
if(m~=n)
    error('������һ������')
end
count=0 %��¼��������
u1=A*u0;

lamda0=0;
while 1
    [m,p]=max(abs(u1));
    if m==0
        error('��������ȫΪ0')
    end
    uk=A*u1;
    count=count+1;
    lamda=uk(p)/u1(p);
    if abs(lamda-lamda0)<err
        break
    end
    lamda0=lamda;
    u1=uk/uk(p);
end
uk=uk/uk(p);
% fprintf('/n ��������Ϊ%d/n',count)
    
    
    
    
    
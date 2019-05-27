function [lamda,uk]=powerz(A,u0,err)
% u0是初始向量
%返回值：lamda为主特征值，uk为lamda对应的特征向量
[m,n]=size(A);
if(m~=n)
    error('请输入一个方阵！')
end
count=0 %记录迭代次数
u1=A*u0;

lamda0=0;
while 1
    [m,p]=max(abs(u1));
    if m==0
        error('各分量已全为0')
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
% fprintf('/n 迭代次数为%d/n',count)
    
    
    
    
    
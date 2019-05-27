function y=Newton_Inter(x0,y0,x)
%Newton��ֵ����������һϵ�еĵ�x0,y0���õ���x=���ģ�ţ�ٲ�ֵ�����ֵy
n = length(x0);
Diff = zeros(n); %������̱�
Diff(:,1)=y0; %���̱��һ��Ϊy
for i=2:n
    Diff(i,2)=(Diff(i,1)-Diff(i-1,1))/(x0(i)-x0(i-1));
end
for j=3:n %jΪ�б�
    for i=j:n %iΪ�б�
        Diff(i,j)=(Diff(i,j-1)-Diff(i-1,j-1))/(x0(i)-x0(1)); %������̱�
    end
end
%���ݲ��̱�,���Ӧ��ţ�ٲ�ֵ����ʽ��x����ֵy
N(1)=Diff(1,1);
for j=2:n
    T=1;
    for i=1:j-1
        T=T*(x-x0(i));
    end
    N(j)=Diff(j,j)*T;
end
y=sum(N);
%��x����ţ�ٲ�ֵ����ʽ���õ���y��ֵ

function y = Larange_Inter(x0, y0, x)
%Newton��ֵ����������һϵ�еĵ�x0,y0���õ���x=���ģ��������ղ�ֵ�����ֵy
n = length(x0);
L = ones(1, n);
for i=1:n
    for j=1:n
        if (i~=j)
            L(i) = L(i)*((x-x0(j))/(x0(i)-x0(j)));
            %��ֵ������
        end
    end
end
y = L*y0';

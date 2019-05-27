function y = Larange_Inter(x0, y0, x)
%Newton插值方法，给定一系列的点x0,y0，得到在x=处的，拉格朗日插值多项的值y
n = length(x0);
L = ones(1, n);
for i=1:n
    for j=1:n
        if (i~=j)
            L(i) = L(i)*((x-x0(j))/(x0(i)-x0(j)));
            %插值基函数
        end
    end
end
y = L*y0';

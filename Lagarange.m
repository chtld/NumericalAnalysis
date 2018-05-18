x0=[1 4 9];
y0=[1 2 3];
x=7;
%function pp=sum(p)
    for i=1:3
        s=1;
        l=1;
        for j=1:3
            if i~=j
                l=(x-x0(j))/(x0(i)-x0(j));
                s=s*l;
            end
        end
            p(i)=s*y0(i);
    end
        pp=sum(p);
%end
pp
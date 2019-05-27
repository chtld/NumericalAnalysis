number=[4;10;14;20];
x_acc=-5:0.01:5;
y_acc=1./(1+5*x_acc.^2);
plot(x,y_acc)
hold on

for i=1:4
    temp=10/number(i);
    x=-5:temp:5;
    y=1./(1+5*x.^2);
    y_lag=zeros(1,1001);
    for j=1:1001
        y_lag(j)=lagrange(x,y,x_acc(j));
    end
    plot(x_acc,y_lag)
    hold on
end
axis([-5 5 -1 10]);
legend('accurate','p4','p10','p14','p20')
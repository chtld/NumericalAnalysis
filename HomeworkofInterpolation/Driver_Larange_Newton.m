x0 = [1,4,9;4,9,16];
y0 = [1,2,3;1,3,4];
x = 7;
y1 = Larange_Inter(x0(1,:),y0(1,:),x);
y2 = Larange_Inter(x0(2,:),y0(2,:),x);
fprintf('Larange��ֵ��һ�����ݣ�sqrt(7)=%d\n',y1);
fprintf('Larange��ֵ�ڶ������ݣ�sqrt(7)=%d\n',y2);

y3 = Newton_Inter(x0(1,:),y0(1,:),x);
y4 = Newton_Inter(x0(2,:),y0(2,:),x);
fprintf('Newton��ֵ��һ�����ݣ�sqrt(7)=%d\n',y3);
fprintf('Newton��ֵ�ڶ������ݣ�sqrt(7)=%d\n',y4);

fprintf('sqrt(7)=%d\n',7^(1/2));

Inter_index = [4,10,14,20];
h = 0.01;
N = 10/h+1;

x_inter = -5:h:5;
y_lar_inter = zeros(1,N);
y_newton_inter = zeros(1,N);
y_real = zeros(1, N);

str = [];

for i=1:4
    [x0,y0] = Generate_Data(Inter_index(i));
    
    for j = 1:N
        y_lar_inter(j) = Larange_Inter(x0,y0,x_inter(j));
        y_newton_inter(j) = Newton_Inter(x0,y0,x_inter(j));
        y_real(j) = 1./(1+5*x_inter(j)^2);
    end
    
    figure(1)
    subplot(2,2,i)
    h1 = plot(x_inter,y_lar_inter);
    hold on
    h2 = plot(x_inter, y_real);
    str = [num2str(Inter_index(i)),'次插值'];
    legend([h1,h2],str, '真实值'); 
    title('Larange插值方法')
    
    figure(2)
    subplot(2,2,i)
    h1 = plot(x_inter,y_newton_inter);
    hold on
    h2 = plot(x_inter, y_real);
    str = [num2str(Inter_index(i)),'次插值'];
    legend([h1,h2],str, '真实值'); 
    title('Newton插值方法')
end
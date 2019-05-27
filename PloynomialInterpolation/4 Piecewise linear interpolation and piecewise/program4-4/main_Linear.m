x=0:2*pi;  
y=sin(x);  
xx=0:0.2:6;  
yy=Linear(x,y,xx);  
plot(x,y,'o:',xx,yy,'+r') 
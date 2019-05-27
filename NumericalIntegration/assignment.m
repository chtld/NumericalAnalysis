format long
n = 10;
h = 0.1;
f = @(x) exp(x.^2);
x = 0: h: 1;
sum1 = f(x(1)) + f(x(end));
sum2 = sum1;
for i = 2:  n
    sum1 = sum1 + 2 * f(x(i));
    if mod(i,2) == 0
        sum2 = sum2 + 4 * f(x(i));
    end
    if mod(i,2) == 1
        sum2 = sum2 + 2 * f(x(i));
    end
end
sum1*h/2;
sum2*h/3;
a = 0;
b = 1;
n = 5;
Gauss_point = [-0.9324695142, -0.6612093865, -0.2386191761, 0.2386191761, ...
    0.6612093865,  0.9324695142];
Gauss_weight = [ 0.1713244924,  0.3607615730,  0.4679139346, 0.4679139346, ...
    0.3607615730,  0.1713244924];
Gauss_point = (b-a)/2*Gauss_point+(b+a)/2;
value = f(Gauss_point);
Gauss_weight = (b-a)/2*Gauss_weight;
I5 = Gauss_weight*value'

Gauss_point = [-0.9324695142, -0.6612093865, -0.2386191761, 0.2386191761, ...
    0.6612093865,  0.9324695142];
Gauss_weight = [ 0.1713244924,  0.3607615730,  0.4679139346, 0.4679139346, ...
    0.3607615730,  0.1713244924];
Gauss_point = (b-a)/2*Gauss_point+(b+a)/2;
value = f(Gauss_point);
Gauss_weight = (b-a)/2*Gauss_weight;
I6 = Gauss_weight*value'


Gauss_point = [-0.9491079123, -0.7415311856, -0.4058451514, 0,...
    0.4058451514, 0.7415311856,  0.9491079123];
Gauss_weight = [ 0.1294849662,  0.2797053915,  0.3818300505, 0.4179591837, ...
    0.3818300505,  0.2797053915, 0.1294849662];
Gauss_point = (b-a)/2*Gauss_point+(b+a)/2;
value = f(Gauss_point);
Gauss_weight = (b-a)/2*Gauss_weight;
I7 = Gauss_weight*value'
Gauss_point = [-0.9602898566, -0.7966664774, -0.5255324099, -0.1834346425, ...
    0.1834346425,  0.5255324099, 0.7966664774, 0.9602898566];
Gauss_weight = [ 0.1012285363,  0.2223810345,  0.3137066459, 0.3626837834, ...
    0.3626837834,  0.3137066459, 0.2223810345, 0.1012285363];
Gauss_point = (b-a)/2*Gauss_point+(b+a)/2;
value = f(Gauss_point);
Gauss_weight = (b-a)/2*Gauss_weight;
I8 = Gauss_weight*value'
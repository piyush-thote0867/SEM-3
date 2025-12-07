clc;
clear all;
close all;

sq = @square_wave; %defining sq as function
power_square = (1/4)*integral(sq,-1 ,1, 'ArrayValued', true); %function accepts scalar and returns vector
disp(power_square) %generating output
cks = ck(0, pi/2);
pf = cks^2; 
i = 1;
while pf < (0.95*power_square) %showing power is less than 95%
    ckp = ck(i, pi/2);
    ckn = ck(-i, pi/2);
    pf = pf + (ckp^2) + (ckn^2);
    cks = [ckn, cks, ckp];
    i = i + 1;
end
disp(size(cks))
k = -(i-1):i-1;
fs = 100;
T = 4;
w0 = 2*pi/T;
t1 = linspace(-3, -5, 10000);
y = square(w0*t1);
y = (y+1)/2;
subplot(3,1,1)
plot(t1-1,y,'r');
title('square wave')
subplot(3,1,2)
stem(k,abs(cks))
xlim([k(1)-1 k(end)+1])
title('coefficients of fourier series')
subplot(3,1,3)
plot(t1-1,y,'r');
title('Fourier Approx')
hold on;
t1 = linspace(-4,4);
fo = fourier(t1, pi/2, 7);
plot(t1, fo,'g');
legend('Original', 'fourier Approx')
function s=square_wave(x) %defining function to generate square wave 
    x = abs(x);
    if rem(floor(x), 4) == 0
        s = 1;
    elseif rem(floor(x)+1, 4) == 0
        s = 1;
    else
        s = 0;
    end
end

function f=fourier(t, w, ki) %defining function to perform fourier transform
    f = zeros(size(t));
    for k=-ki:ki
        f = f + ck(k, w)*exp(-1i*k*w*t);  
    end
end

function ck =ck(k, w) %finding fourier coefficients
    f = @(t) square_wave(t)*exp(1i*k*w*t);
    ck = (w/(2*pi))*integral(f, -1, 1);
end

SIN WAVE

clear all;
close all;
prompt ="Enter the frequency";
f = input(prompt);
figure(1);
t = [0 : 0.0001: 4/f];
plot(t ,sin(2*pi*t*f),'r');
xlabel("time");
ylabel("amplitude");
title("sin wave")
hold on;

UNIT STEP

clc;
clear;
close all;
t = -20:1:20;
u(t>=0) = 1;
u(t<0) = 0;
plot(t,u);
axis([-20 20 -2 2]);
xlabel("t");
ylabel("Amplitude");
title("Unit step function");


RAMP FUNCTION

clc;
clear all;
t = -20:1:20;
u(t>=0)=1;
u(t<0)= 0;
k=t;
r=t.*u;
plot(t,r);
xlabel('t');
ylabel("Amplitude");
title("Ramp function");
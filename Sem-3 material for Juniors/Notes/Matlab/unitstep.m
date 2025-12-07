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



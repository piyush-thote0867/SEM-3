clc ;
clear all;
t = -5:1:5;
imp(t==0) =1;
imp(t>0)=0;
imp(t<0)=0
title("IMPULSE");
figure();
stem(t,imp);
xlabel("t");
ylabel("Amplitude")
clc;
clear all;
prompt = "enter frequency";
f = input(prompt);
t =0:0.01:4/f;
y = cos(2*pi*f*t);
plot(t,y);

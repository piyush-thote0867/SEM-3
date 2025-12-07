CT EXPONENTIAL FUNCTION

clear all;
clc;
t = -30:1:30;
prompt = "Enter value of a";
a =input(prompt);
prompt1 = "Enter value of b";
b =input(prompt1);
e = exp(-a*t);
plot(t,e);
title("Exponential function");
xlabel("t");
ylabel("Amplitude");
hold on;
e2 = exp(b*t);
plot(t,e2);

CT IMPULSE

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
ylabel("Amplitude");


DT EXPONENTIAL

clear all;
clc;
t = -30:1:30;
prompt = "Enter value of a";
a =input(prompt);
e = exp(-a*t);
stem(t,e);
title("Exponential function");
xlabel("t");
ylabel("Amplitude");

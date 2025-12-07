clear all;
clc;
x = 1:1:10;
y = [3 4 5 6 7.2 7.9 8.5 9 7 9.5]; %declaring inputs
coeff = polyfit( x , y , 1); % finding polynomial eqn

slope = coeff(1);
intercept = coeff(2); % finding slope & intercept

fprintf("Slope : %.2f\n" , slope);
fprintf("Intercept : %.2f\n" , intercept);

scatter(x , y , 'b' , 'filled'); % plotting points of input
hold on;

newy = polyval(coeff,x); % plotting the best-fit straight line
plot(x , newy , 'r');
title("Linear regression");
xlabel("X");
ylabel("Y");
legend('Data', 'Linear fit');
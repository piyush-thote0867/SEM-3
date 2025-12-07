clear all;
clc;
Vi = [105 110 115  120]; %declaring inputs
Hrs = [1400 1200 1120 950];% finding polynomial eqn
coeff = polyfit( Vi , Hrs , 1);

slope = coeff(1);
intercept = coeff(2); % finding slope & intercept

fprintf("Slope : %.2f\n" , slope);
fprintf("Intercept : %.2f\n" , intercept);

scatter(Vi , Hrs , 'b' , 'filled'); % plotting points of input
hold on;

newhrs = polyval(coeff,Vi);
plot(Vi , newhrs , 'r'); % plotting the best-fit straight line
title("Linear regression");
xlabel("Time in hrs");
ylabel("Voltage");
legend('Data', 'Linear fit');
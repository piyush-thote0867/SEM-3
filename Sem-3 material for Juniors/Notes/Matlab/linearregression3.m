clear all;
clc;
T = [ 66 64 61 58 55 50]; % defining the variable arrays
R = [124 123.5 122.4 121.6 120.5 118.4];
coeff = polyfit(T, R,1 ); %to find eqn of line
slope = coeff(1);
intercept = coeff(2);
fprintf("Slope :%.2f\n" , slope); %finding slope
fprintf("Intercept :%.2f\n" , intercept); %finding intercept
scatter(T ,R,T,"b","filled");
hold on;
newR = polyval(coeff,T); %creating new line 
plot(T, newR,'r');
title("Linear regression");
xlabel("Resistaance");
ylabel("Temperature");
legend("Data", "Linear fit");
    
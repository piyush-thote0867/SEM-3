clc;
clear all;
n= -10:10;
u = sin(4*n*pi);
h = [12 3 4 5 6 -1 5 9 10 2 3 4];
m = length(u);
p = length(h);
U = [u,zeros(1,p)]; %defining zero matrix to perform matrix operations error free
H = [h,zeros(1,m)];
for i =1:m+p-1 %loop1 for adding product of points during convolution
    Y(i) =0;
    for j = 1:m
        if(i-j+1>0)
            Y(i) = Y(i)+U(j)*H(i-j+1);%convolution by adding product of points
        else
        end
    end
end
%U[n] graph
subplot(3,1,1);
stem(u);
xlabel('n');
ylabel('u[n]');
title('Input Signal');
%H[n] grah
subplot(3,1,2);
stem(h);
xlabel('n');
ylabel('x[n]');
title('Input Response');
%Convolution of u and H
subplot(3,1,3);
stem(Y);
xlabel('n');
ylabel('Y[n]');
title('Output signal after convolution');

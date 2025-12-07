clc;
clear all;

%initialising the input
x = cos(1:50);
y = sin(1:50);

%finding length of output array
l = length(x)+length(y)-1;

%adding zeroes at endd of array so that operations are errorless
X = [x,zeros(1,length(y))];
Y = [y, zeros(1,length(x))];

%initialising output array
Z = zeros(1,l);

%loop for convolution
figure(1);
for i =1:l  %looping for n in Z[n]
    for j =1:length(x) %looping for k in x[k]*y[n-k]
        if(i-j+1)>0 %checking whether element exisit in input
            Z(i) = Z(i) +X(j)*Y(i-j+1) %adding values of x[k]*y[n-k]

            plot(Z,"-b");
            xlabel("n");
 ylabel("z[n]");
 title("Animation of convolution");
            pause(0.00005);
             
 
        else
        end
    end

end




          

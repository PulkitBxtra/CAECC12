% exp 4: to generate gaussian distributed random number and plot its
% density function. Find its mean and variance.


clc;
clear all;
close all;
N=100000;
x=randn(1,N);
mux=mean(x);
sigmax2=var(x);
step=0.1;
range=-3:step:3;
F= 1/sqrt(2*pi*sigmax2).*exp(-(range-mux).^2./(2*sigmax2));
figure(1);
plot(range,F,'b-*'), hold on;
h=hist(x, range);
step=0.1;
simF=h/(step.*sum(h));
plot(range, simF,'m-');
xlabel('range');
ylabel('plot');
title("Gaussian distribution");
legend('Theoritical','Simulation');

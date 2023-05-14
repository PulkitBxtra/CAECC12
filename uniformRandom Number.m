% experiment 3: To generate uniform random number and plot its density
% function. Find its mean and variance.

clc;
clear;
clear all;

N=100000;
x=rand(1,N);mux=mean(x);sigmax2=var(x);
step=0.1;
b=1;a=0;
range1=a:step:b;
range = -3:step:3;

f = 1/b-a;

plot(range1,f,'b*');hold("on");
h=hist(x,range);
step=0.1;
simf= h/(step.*sum(h));
plot(range,simf,'m-')
xlabel('range')
ylabel('PDF')
title('PDF of Uniform Distributed Random Variabe')
legend('theorectical','Simulated')
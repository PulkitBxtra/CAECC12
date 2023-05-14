% Experiment 2. To verify following properties of forier transform:
% i. Time shifting

clc;
clear all;
close all;
t=0:0.001:0.1-0.001;
Fs = 1e3;
freq1 = 100;
x1=cos(2*pi*freq1*t);
Delay = 2;
yp = fft(x1);
yp = yp(1:length(x1)/2+1);
f = 0:Fs/length(x1):500;
yp = yp.*exp(-1i*2*pi*f*Delay*(1/Fs));
yp = [yp conj(fliplr(yp(2:end-1)))];
y = ifft(yp, 'symmetric');
plot(t(1:100), x1(1:100), 'b');
hold on;
plot(t(1:100), y(1:100), 'r');



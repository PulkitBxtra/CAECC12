% Experiment 2. To verify following properties of forier transform:
% ii. Frequency shifting

clc; 
clear all ; 
close all;
t = linspace(0, 1, 1000);
S = sin(2*pi*100*t);
Sc = sin(2*pi*50*t);
HS = S.*Sc;
Fs = 1000;
Fn = Fs/2;
FT1 = fft(S)/length(S);
FT2 = fft(HS)/length(HS);
Fv = linspace(0, 1, fix(length(FT1)/2) + 1) * Fn;
Iv = 1:length(Fv);
figure(1)
subplot(2, 1, 1)
plot(Fv, 2*abs(FT1(Iv)))
grid
subplot(2, 1, 2)
plot(Fv, 2*abs(FT2(Iv)))
grid





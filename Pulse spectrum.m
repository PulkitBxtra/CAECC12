% experiment one: To plot the spectrum of a pulse width 10

clc;
clear all;
close all;

syms t w
x=1;
expw=exp(-1*1i*w*t);
z=int(x*expw,t,-5,5);
xlabel('t')
ylabel('x(t)')
figure(1);
fplot('1', [-5,5])
figure(2);
fplot(z)

% Generate (7,4) linear block code given a generator matrix G assume that
% the recieved vector is [1 0 0 1 0 0 1]. Find the syndrome.

clc;
clear all;
close all;
G = [1 1 0 1 0 0 0;0 1 1 0 1 0 0;1 1 1 0 0 1 0;1 0 1 0 0 0 1];

r = [1 0 0 1 0 0 1];
[K,N] = size(G);
m = dec2bin(0:(2.^K)-1)-'0';
c = mod((m*G),2);
P=G(:,1:N-K);
I=eye(N-K);
PT=P.';
H = horzcat(PT,I);
HT= H.';
S= mod((r*HT),2);
disp(S);
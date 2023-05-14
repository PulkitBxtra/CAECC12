% To generate a M/M/1 Queue having infinite buffer space with parameters (, ) and plot 
% the average delay per packet vs /

clear;
clc;
close all;

lambda = 2; % arrival rate
mu = 3; % service rate
buffer_sizes = 0:20; % vary buffer size from 0 to 20
blocking_probabilities = zeros(size(buffer_sizes)); % preallocate for efficiency
for i = 1:length(buffer_sizes)
 buffer_size = buffer_sizes(i);
if buffer_size == 0
 blocking_probabilities(i) = 1 - lambda/mu; % no buffer
else
 rho = lambda/mu;
 p0 = 1 - rho;
 summation = 0;
for j = 0:buffer_size
 summation = summation + (rho^j)/factorial(j);
end
 blocking_probabilities(i) = (rho^buffer_size)/(factorial(buffer_size)*p0*summation); % compute blocking probability
end
end
plot(buffer_sizes, blocking_probabilities, 'o-'); % plot blocking probability vs. buffer size
xlabel('Buffer Size');
ylabel('Blocking Probability');
title(['M/M/1 Queue with Finite Buffer, \lambda = ', num2str(lambda), ',\mu= ', num2str(mu)]);

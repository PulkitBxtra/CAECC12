% Experiment 2. To verify following properties of forier transform:
% iii. Convolutional

clear variables
close all
n = -20:20;
x = sin(n);
h = [-1, -2, 8 , -2, -1];
N = length(x);
M = length(h);
Ny = N + M - 1;
y = zeros(1, Ny);
for i = 1:N
    for k = 1:M
        y(i + k - 1) = y(i + k - 1) + h(k)*x(i);
    end
end
m = 0: Ny - 1;
figure
stem (m, y, 'linewidth', 3, 'color', 'm')
grid;
a = title('Output of an LTI System y(n)');
set(a, 'fontsize', 14);
a = ylabel('y(n)');
set(a, 'Fontsize', 14);
a = xlabel('n');
set(a, 'Fontsize', 14);
figure
y2 = conv(x, h);
stem (m, y2, 'linewidth', 3, 'color', 'r')
grid;
a = title('Output y(n) using conv(x,h)');
set(a, 'fontsize', 14);
a = ylabel('y(n)');
set(a, 'Fontsize', 14);
a = xlabel('n');
set(a, 'Fontsize', 14);


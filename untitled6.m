
close all;

global x y

x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));

skaicneig
skaicteig

figure;
plot(x, y, 'k-.+');
grid on;
xlabel('x');
ylabel('y');
title('Funkcijos y(x) grafikas');

whos global

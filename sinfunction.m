clear
clc
close all

x = linspace(0,10,1000);

y1 = sin(x)-1;
y2 = sin(2*x)-2;
y3 = sin(3*x)-3;

figure
plot(x, y1,'c','LineWidth', 2)
hold on
plot(x, y2,'m' ,'LineWidth', 2)
plot(x, y3,'g', 'LineWidth', 2)

grid on
xlabel('x')
ylabel('Amplitude')
title('Representation of sin functions')
legend('sin(x)-1','sin(2x)-2','sin(3x)-3')

clc;
clear;
close all;

% Defining theta range
theta = linspace(-2*pi, 2*pi, 1000);

% Original function
f = (sin(theta)).^3 + exp(1i*theta);

% solving it taking dervative of the function
% d/dtheta [sin^3(theta)] = 3*sin^2(theta)*cos(theta)
% (via the substituoition method)
% d/dtheta [exp(i*theta)] = i*exp(i*theta)

df = 3*(sin(theta)).^2 .* cos(theta) + 1i*exp(1i*theta);

% Plotting Real and Imaginary parts of derivative
figure;

subplot(2,1,1);
plot(theta, real(df), 'LineWidth', 2);
grid on;
title('Real Part of Derivative');
xlabel('\theta');
ylabel('Re(df/d\theta)');

subplot(2,1,2);
plot(theta, imag(df), 'LineWidth', 2);
grid on;
title('Imaginary Part of Derivative');
xlabel('\theta');
ylabel('Im(df/d\theta)');

% magnitude of derivative plot
figure;
plot(theta, abs(df), 'LineWidth', 2);
grid on;
title('Magnitude of Derivative');
xlabel('\theta');
ylabel('|df/d\theta|');

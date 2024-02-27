clc;
close all;
clear;

omega = linspace(0, 0.5, 85)
m = 0:99;
filename = strcat('DVRF.txt')
addpath(genpath('Пункт 1'))

data = importdata(filename);

plot(omega, data(:, 4))
grid('on')

title('аргумент ДВРФ выходного сигнала')
ylabel('arg(S(\Omega))')
xlabel('Безразмерная частота')
print(['аргумент выходного сигнала ДВРФ'],'-dpng')
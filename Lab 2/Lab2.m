clc;
close all;
clear;

omega = linspace(0, 0.5, 200)
m = 0:99;
filename = strcat('Signals_filt.txt')
addpath(genpath('Пункт 1'))

data = importdata(filename);

plot(data(:,2),'-o', 'MarkerFaceColor','blue')
grid('on')

title('Выходной сигнал')
ylabel('x[n]')
xlabel('Отсчеты n')
print(['Выходной сигнал'],'-dpng')
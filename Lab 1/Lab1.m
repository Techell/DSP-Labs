clc;
close all;
clear;

N = 56
fd = 2.56*1
delta = 1/fd
filename = strcat('Source_Signal fd = 1.txt')
addpath(genpath('Пункт 3.1-3.2'))

data = importdata(filename);
x = data(1:end, 1);
t = linspace(0, N*delta, 1024);
y = kot(t, N, delta, x)

plot(y, '-o')

% fig = plot(x)
% title('DVPF, 0,8*f_d')
% ylabel('Амплитуда')
% xlabel('Номер отсчета n')
% print(['DVPF Fd = 0,8'],'-dpng')
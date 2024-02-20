clc;
close all;
clear;

t = linspace(0, 1, 56);

N = 56
fd = 0.8
delta = 1/fd
filename = strcat('Source_Signal fd = 1.txt')
addpath(genpath('Пункт 3.1-3.2'))

data = importdata(filename);
x = data(3:end, 1);
x = x.';
 % Время для построения отдельного sinc(Xd), не влияет на результаты
S=0; % S - восстановленный сигнал 
for i=1:1:N % Выполняется n операций
 G=sinc(fd/2/pi*(t-n(i))).*x(i); % по теореме отсчётов sinc(2*Pi*Fd(X-k*dt)), НО в матлабе sinc(x)=sin(pi*x)/(pi*x)
 S=S+G; % Накопление n слагаемых 
end

 figure
 plot(Xd,S); % Вывод n графиков фильтрующих функций - "восстановление"
 title('Восстановление i отсчёта');
plot(y)
% fig = plot(x)
% title('x_5[n], f_d=')
% ylabel('Амплитуда')
% xlabel('Номер отсчета n')
% print(['X5[n]'],'-dpng')
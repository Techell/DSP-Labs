clc;
close all;
clear;

N = 56
fd = 2.56*1
delta = 1/fd
filename = strcat('Source_Signal sko = 0,02.txt')
addpath(genpath('Пункт 3.1-3.2'))

A = 1.11;
phi = -5.8*pi/180;
f = 0.25;


data = importdata(filename);
x = data(1:end, 1);

% x = A*sin(2*pi*f*[0:delta:delta*(N-1)] + phi);
del = delta/10;
t = 0:del:N*del*10;

m=0:(N*10);
n1=(0:N-1)*10;

% for m=1:N*10
%     for n=1:N
%         Y(n) = x(n)*sinc(pi*((m-1)*del - (n)*delta)/delta);
%     end
%         Yk(m) = sum(Y);
% end
X = A*sin(2*pi*f*(m+10)*del + phi);
y = [];
tmp = 0;
for n=0:N-1
    tmp = tmp + x(n+1).*sinc(pi*(t - (n)*delta)/delta);
end
y = tmp;

G = X - y

fig = plot(G)
% G = G(10:end-10);
s = std(G)
txt = '\sigma = ';
a = strcat(txt, num2str(s))
% fig = plot(m,y, n1, x)
% fig = plot(x)
title('Разность сигналов СКО 0.02')
ylabel('Амплитуда')
xlabel('Номер отсчета n')
legend("Восстановленный", "Исходный")
text(100,0.06,a, 'FontSize',14)
print(['Разность сигналов с СКО = 0,02'],'-dpng')



function out = sinc(x)
% Deal with the removable singularity at 0 explicitly.
out = sin(x)./x;
out(x == 0) = 1;
end



function [y] = kot(t, N, delta, x)
tmp = 0;
for n=0:N-1
    tmp = tmp + x(n+1).*sinc(pi*(t - n*delta)/delta);
end
y = tmp;
end
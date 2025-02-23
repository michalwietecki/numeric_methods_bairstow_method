function [y] = horner(a,x)
%funkcja oblicza wartosc wielomianu o wspolczynnikach a
%w punkcie x za pomoca algorytmu hornera
n = (length(a));
w = a(n);
for k = n-1:-1:1
    w = a(k) + x.*w;
end
y = w;
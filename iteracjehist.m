%skrypt sluzacy do stworzenia histogramu z sumy wszystkich iteracji do
%dojscia do wyyniku z wielomianu o wspolczynnikach a
a = [1,2,3,4];
iteracje = 0;

for i = 1:1000
    [pierw, iter] = zerowe(a,i,i);
    iteracje(i) = iter;
end
figure(3)
histogram(iteracje)
title('Histogram liczby iteracji dla u = v = [1:1000]')
xlabel('u = v')
ylabel('liczba wystąpień')
grid on
function [wynik, blad] = wielokrotnypierwiastek(u,v)
%funkcja sluzaca do sprawdzenia jak funkcja dziala dla wielomianow z
%wielokrotnymi pierwiastkami rzeczywistymi. tworzy macierz z bledami
%bezwzglednymi dla wielomianow roznego stopnia
tic

p1 = zerowe([-1,1],u,v);
p2 = zerowe([1,-2,1],u,v);
p3 = zerowe([-1,3,-3,1],u,v);
p4 = zerowe([1,-4,6,-4,1],u,v);
p5 = zerowe([-1,5,-10,10,-5,1],u,v);
p6 = zerowe([1,-6,15,-20,15,-6,1],u,v);
p7 = zerowe([-1,7-21,35,-35,21,-7,1],u,v);
p8 = zerowe([1,-8,28,-56,70,-56,28,-8,1],u,v);
p_real = 1;

p1(2:8) = 0;
p2(3:8) = 0;
p3(4:8) = 0;
p4(5:8) = 0;
p5(6:8) = 0;
p6(7:8) = 0;
p7(8) = 0;

wynik = [p1',p2',p3',p4',p5',p6',p7',p8'];

i = ones(8,8);
i = tril(i,-1);

bladBezwgledny = wynik - 1;
bladBezwgledny(i==1) = 0;
blad = bladBezwgledny;
toc


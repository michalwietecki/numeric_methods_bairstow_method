%skrypt sluzacy do stworzenia 4 wykresow z Figure 1, czyli maksymalnych
%wartosci bezwzglednych bledow dla wielomianow roznych stopni
figure(1)
subplot(2,2,1)

[wynik,bladBezwgledny] = wielokrotnypierwiastek(1,1);
A = [1:8;max(abs(real(bladBezwgledny))); max(abs(imag(bladBezwgledny)))];

bar(A(2:3,:)')
grid on
title('Max moduł z błędu dla wielomianów (x-1)^n dla u = 1 v = 1', FontSize=11)
xlabel('n (stopień wielomianu)')
ylabel('błąd bezwzględny')
legend('część rzeczywista','część urojona')
legend('Location','west')

subplot(2,2,2)

[wynik,bladBezwgledny] = wielokrotnypierwiastek(-1,-1);
A = [1:8;max(abs(real(bladBezwgledny))); max(abs(imag(bladBezwgledny)))];

bar(A(2:3,:)')
grid on
title('Max moduł z błędu dla wielomianów (x-1)^n dla u = -1 v = -1', FontSize=11)
xlabel('n (stopień wielomianu)')
ylabel('błąd bezwzględny')
legend('część rzeczywista','część urojona')
legend('Location','west')

subplot(2,2,3)

[wynik,bladBezwgledny] = wielokrotnypierwiastek(-1,1);
A = [1:8;max(abs(real(bladBezwgledny))); max(abs(imag(bladBezwgledny)))];

bar(A(2:3,:)')
grid on
title('Max moduł z błędu dla wielomianów (x-1)^n dla u = -1 v = 1', FontSize=11)
xlabel('n (stopień wielomianu)')
ylabel('błąd bezwzględny')
legend('część rzeczywista','część urojona')
legend('Location','west')

subplot(2,2,4)

[wynik,bladBezwgledny] = wielokrotnypierwiastek(-1000000,1000000);
A = [1:8;max(abs(real(bladBezwgledny))); max(abs(imag(bladBezwgledny)))];

bar(A(2:3,:)')
grid on
title('Max moduł z błędu dla wielomianów (x-1)^n dla u = -1000000 v = 1000000', FontSize=11)
xlabel('n (stopień wielomianu)')
ylabel('błąd bezwzględny')
legend('część rzeczywista','część urojona')
legend('Location','west')

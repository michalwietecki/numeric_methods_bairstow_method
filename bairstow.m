function [u_r,v_r,b1, b2, b_r,i] = bairstow(a,u,v)
%funkcja implementuje metodę Bairstowa dla wielomianu stopnia n-1, a - wektor
%wspolczynnikow,(u,v)-punkt poczatkowy
n = length(a);

b = ones(1,n);
c = ones(1,n);

b(n) = a(n);
c(n-1) = a(n);
c(n) = 0;

u_r = 0;
v_r = 0;
b1 = 0;
b2 = 0;
i = 1; %iterator
while (b(1) >= 10^(-20)) || (b(2) >= 10^(-20))
    b(n-1) = a(n-1) + u*b(n);
    for k = (n-2):-1:1
        b(k) = a(k) + u*b(k+1) + v*b(k+2);
        c(k) = b(k+1) + u*c(k+1) + v*c(k+2);
    end
    J = c(1)*c(3) - c(2)^2;
    u = u + (c(2)*b(2) - c(3)*b(1))/J;
    v = v + (c(2)*b(1) - c(1)*b(2))/J;

    u_r(i) = u;
    v_r(i) = v;

    b1(i) = b(1);
    b2(i) = b(2);
    i = i+1;
end
b_r = b(3:n);

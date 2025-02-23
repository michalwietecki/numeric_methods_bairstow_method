function [w, real] = uv2w(u,v)
%funcka wyznacza pierwiastki czynnika kwadratowego x^2 - uv - v
%funkcja wyznacza zespolony pierwiawtek w wielomianu takie ze
%u = 2*re(w)
%v = -((re(w))^2 + (im(w))^2)
delta = u^2 + 4*v;
if delta > 0
    w(1) = (u+sqrt(delta))/2;
    w(2) = (u-sqrt(delta))/2;
    real = 2;
else
w = u/2 + sqrt(-v-(u/2)^2)*1i;
real = 0;
end
%skrypt sluzacy do znalezionia sredniego czasu wykoania 1000 operacji
%zerowe na wielomianie o wspolczynnikach [1320,34,-91,-4,1] dla roznych u v
%do zmieniania
u = 10000000;
v = 1000000;
tic
for i = 1:1000
   zerowe([1320,34,-91,-4,1],u,v) 
end
toc
close all;
home;
clear;
syms t;

% Gráfico de x(t)
x = heaviside(t-2)+heaviside(t-3)-2*heaviside(t-4);
y1 = subs(x,t,-t+1);
y2 = subs(x,t,2*t-1);
figure(1);
subplot(321)
fplot(x,[-3,5]);
title('x(t)');
axis equal
grid

pause
subplot(323)
fplot(y1,[-3,5]);
title('Item a');
ylabel('y_1(t)=x(-t+1)');
axis equal
grid

pause
subplot(325)
fplot(z1,[-3,5]);
ylabel('y_2(t)==x(2t-1)');
title('Item b');
axis equal
grid
pause

y2 = subs(x,t,-2+t+4);
z2 = subs(x,t,-t-2);
subplot(322)
fplot(x,[-3,5]);
title('x(t)');
axis equal
grid
pause
subplot(324)
fplot(y2,[-3,5]);
title('Item c');
ylabel('y_2(t)=x(t+1)');
axis equal
grid

pause
subplot(326)
fplot(z2,[-3,5]);
ylabel('z_2(t)=y_2(t/2)=x(t/2+1)');
title('Item d');
axis equal
grid

function OperaSinal(x,Ix,y,Iy)

syms t;
F = figure(1);
set(F,'name','OPERAÇÕES BÁSICAS COM SINAIS CONTÍNUOS');
subplot(211)
fplot(x,Ix);
title('x(t)');
axis equal
grid
subplot(212)
fplot(y,Iy);
title('y(t)');
axis equal
grid
end

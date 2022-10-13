close all;
home;
clear;
syms t;

% Gráfico de x(t)
x = heaviside(t-2)+heaviside(t-3)-2*heaviside(t-4);
figure(1);
subplot(321)
fplot(x,[-3,5]);
title('x(t)');
axis equal
grid

pause
subplot(323)
y1 = subs(x,t,-t+1);
fplot(y1,[-3,5]);
title('Item 1');
ylabel('y_1(t)=x(-t+1)');
axis equal
grid

pause
subplot(325)
y2 = subs(x,t,2*t-1);
fplot(y2,[-3,5]);
ylabel('y_2(t)==x(2t-1)');
title('Item 2');
axis equal
grid
pause

pause
subplot(322)
y3 = subs(x,t,-2*t+4);
fplot(y2,[-3,5]);
ylabel('y_3(t)==x(-2t+4)');
title('Item 3');
axis equal
grid

pause
subplot(324)
y4 = subs(x,t,-t-2);
fplot(y4,[-3,5]);
ylabel('y_4(t)==x(-t-2)');
title('Item 4');
axis equal
grid

pause
subplot(326)
y5 = subs(x,t,(t+6)/3);
fplot(y5,[-3,5]);
ylabel('y_5(t)==x((t+6)/3)');
title('Item 5');
axis equal
grid

pause
subplot(326)
y6 = subs(-0.5*x-1,-t/3,t+2);
fplot(y2,[-3,5]);
ylabel('y_6(t)==x((t+6)/3)');
title('Item 6');
axis equal
grid
pause

Ix = [-3,5];
Iy = [-3,5];

OperaSinal(x,Ix,subs(x,t,-t+1),Iy);
pause
OperaSinal(x,Ix,subs(x,t,2*t-1),Iy);
pause
OperaSinal(x,Ix,subs(x,t,-2*t+4),Iy);
pause
OperaSinal(x,Ix,subs(x,t,-t-2),Iy);
pause
OperaSinal(x,Ix,subs(x,t,(t+6)/3),Iy);
pause
OperaSinal(x,Ix,subs(-0.5*x-1,-t/3,t+2),Iy);
pause

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


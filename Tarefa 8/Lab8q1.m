clc;
clear all;
clf;
f0=10;
fs=300;
T0=1/f0;
Ts=1/fs;
t=[0:Ts:5*T0];
x=cos(2*pi*f0*t);
a=0.25;
ns=a*randn(1,length(x)); %ruído
xn=x+ns; %sinal final + ruído

N=input('Ordem desejada do filtro =');
h=1/N*ones(1,N);

xf=conv(xn,h);
tf=[0:Ts:(length(xf)-1)*Ts];

plot(t, xn, 'b', tf, xf, 'r', 'LineWidth', 1.2);
axis tight;
box off;
set(gcf, 'color', 'w');
legend('Sinal ruidoso', 'Sinal filtrado');
xlabel('tempo(s)', 'fontsize', 18);
set(gca, 'FontSize', 18);

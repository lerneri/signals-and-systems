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

N=100;
b=1/N*ones(1,N);

yy=filter(b,a,xn);
plot(xn, 'b');
hold on;
plot(yy,'r');
title('Comparação do sinal filtrado utilizando a função filter do MATLAB (Filtro de ordem 100)');
xlabel('Tempo (s)');

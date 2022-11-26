clc;
clear all;
clf;
home
fs=300;
Ts=1/fs;
load('sinal13.mat');
sinal=ymedido;
t=0:Ts:(length(sinal)-1)*Ts;

figure 1
plot(t,sinal);
grid on;
title('Sinal Ruidoso');
xlabel('tempo (s)');

ordem = 100;
h=1/ordem*ones(1,ordem);
xf=conv(sinal,h);

tf=0:Ts:(length(xf)-1)*Ts;

figure 2
plot(t,sinal,'b');
hold on;
plot(tf,xf,'r','LineWidth',1.5);
grid on;
legend('Sinal Ruidoso', 'Sinal Filtrado', 'location', 'best');
title('Convolução de um sinal ruidoso com filtro de média móvel de ordem 100');
xlabel('tempo (s)');

T=8.49-5.81;
f=1/T;
A=0.9761-(-0.0201);
fase=2*pi*f*2.4968;

disp('Periodo: ' + T);
disp('Frequência: ' + f);
disp('Amplitude: ' + A);
disp('Fase: ' + fase);

x=A*sin(2*pi*f*t - fase);
figure 3
plot(tf,xf,'r',t,x,'g');
grid on;
xlabel('tempo (s)');
legend('Sinal Filtrado','Sinal Parametrizado', 'location', 'best');
title('Comparação do sinal filtrado com o sinal obtido a partir dos parâmetros da onda');

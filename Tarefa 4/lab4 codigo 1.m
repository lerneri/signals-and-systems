%Convolução de dois sinais contínuos
close all; clc; clear;
%----------------------------------------------------------
% Inicialização - definindo a "função" degrau unitário
% ---------------------------------------------------------
t = -1:0.01:5;
t1=-1:0.01:-0.01;
t2=0:0.01:5;
u1(1:max(size(t1)))=0;
u2(1:max(size(t2)))=1;
u=[u1 u2];
% ----------------------------------------------------------
% Definindo a função x(t) e gerando gráfico - Figura 1
%-----------------------------------------------------------
x = exp(-13*t).*u;
fig=figure();
p=plot(t,x,'k');
set(p,'LineWidth',2);
ylabel('x(t)')
xlabel('Tempo (s)');
% ----------------------------------------------------------
% Definindo a função h(t) e gerando gráfico - Figura 2
%-----------------------------------------------------------
fig=figure();
h = sin(13*t).*u;
p=plot(t,h,'k');
set(p,'LineWidth',2);
ylabel('h(t)')
xlabel('Tempo (s)');
% ----------------------------------------------------------
% Definindo a função x(t) para t > 0
% Realizando a reflexão de h(t) --> h(-t) e gerando gráfico - Figura 3
%-----------------------------------------------------------
fig=figure();
t = 0.01:0.01:5;
u1(1:max(size(t)))=1;
x = exp(-13*t).*u1;
h = sin(13*t).*u1;
p=plot(-t,h,'k',t,x);
set(p,'LineWidth',2);
legend('h(t-\tau)','x(\tau)')
xlabel('Tempo (s)');
% ----------------------------------------------------------
% Realizando a convolução y(t)=x(t)*h(t) para t > 0
% e gerando gráfico - Figura 4
%-----------------------------------------------------------
t = 0:0.01:5;
fig=figure();
y=conv(h,x);
p=plot(t,y(1:length(t)),'k');
set(p,'LineWidth',2);
ylabel('y(t)');
xlabel('Tempo (s)');

close all
clear all
clc

load GrupoRobo_13.mat;
y = z1(:,1); % valores medidos de y
u = z1(:,2); % entrada de sinal

figure (1)
plot(y);
title("Valores medidos");

sys1 = arx(z1,[1 1 1], 'Ts',0.01)%Modelo de primeira ordem

gz1 = tf(sys1);

sysc1 = d2c(sys1) 

g1 = tf(sysc1)%Função de transferência segunda ordem

sys2 = arx(z1,[2 2 0], 'Ts',0.01) %Modelo de segunda ordem

gz2 = tf(sys2);

sysc2 = d2c(sys2) 

g2 = tf(sysc2)%Função de transferência segunda ordem



p1_est=getpvec(sys1)

cov1=getcov(sys1)

y1_est=sim(sys1,u); %simulate response of the identified model

p2_est=getpvec(sys2)

cov2=getcov(sys2)

y2_est=sim(sys2,u); %simulate response of the identified model

figure (2)
plot(y,'b')
hold on
plot(y2_est,'g');
hold on
plot(y1_est,'r');
hold on
legend({'y_m_e_d_i_d_o','y_e_s_t_2_a_._o_r_d_e_m','y_e_s_t_1_a_._o_r_d_e_m'},'Location','southeast')


figure (3)
rdisc = 70*step(gz2);
rcont = 70*step(g2);
plot(rdisc,'b')
hold on
plot(rcont,'g');
hold on
legend({'Resposta discreta','Resposta contínua'},'Location','southeast')

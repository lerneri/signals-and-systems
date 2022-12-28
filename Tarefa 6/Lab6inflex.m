% Planta em malha aberta - FOPDT (First order lag plus time delay)
load Equipe13; % onde A=1,2,3,4,5,6,7,8,9,10,11 para a respectiva equipe
y=yy; % Valores de temperatura y(t)
t=linspace(0,1000,1000); %vetor do tamanho de y
figure (1)
plot(t,y,"-b");
title("Temperatura x Tempo");
xlabel("Tempo");
ylabel("Temperatura");
yi=gradient(y); %primeira derivada (função gradient é mais precisa para conjunto de dados)
yii=gradient(yi); %segunda derivada
figure (2)
inflext=find(diff(sign(diff(y)))) + 1; %saber quando o sinal inverte na derivada
inflexy=interp1(t,y,inflext); %achar o y do ponto de inflexão
inflexm=interp1(t,yi,inflext); %achar a inclinação m (mx+n) da reta de inflexão
inflexn=inflexy-(inflexm*inflext); %achar o ponto n da reta de inflexão
reta=inflexm*t+inflexn; %definindo a reta
plot(t,y,'-b');
hold on;
plot(t,reta,'-.m');
title("Temperatura x Tempo");
xlabel("Tempo");
ylabel("Temperatura");
atraso = 15; %pois até 15 y=0
maiorValor = 0;
for i = 1:length(yii)
    if yi(i) > maiorValor 
        maiorValor = yi(i);
        atraso = i;
    end
end
% determina o valor da contante de tempo
constempo = 1/maiorValor * (y(length(y))+atraso);
constempo = constempo - (atraso+1);
disp(atraso)
disp(constempo)

figure(3)
plot(y)
hold on 

syms d s
U= y(length(y))*exp(-atraso*s)/(constempo*(s)+1);
G=(1)/(s);
H=G*U;
h=matlabFunction(ilaplace(H));
d=1:0.01:1000;
plot(d,h(d))
mse=0;
for i = 1:1000
   mse=+(h(i)-y(i))^2;
end
disp(mse)
title('Modelo')
legend('Real','Estimado')
xlabel('Tempo (s)')
ylabel('Temperatura')





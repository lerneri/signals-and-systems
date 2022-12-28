figure (1)% Planta em malha aberta - FOPDT (First order lag plus time delay)
load Equipe13; % onde A=1,2,3,4,5,6,7,8,9,10,11 para a respectiva equipe
y=yy; % Valores de temperatura y(t)

atraso = 15;
maiorValor = 0;
derivadaPrimeira = diff(y);
derivadaSegunda = diff(y,2);

for i = 1:length(derivadaSegunda)
    if derivadaPrimeira(i) > maiorValor 
        maiorValor = derivadaPrimeira(i);
        atraso = i;
    end
end

disp(atraso)
t = 0:1:300;
% gera a função da reta tangente
retaTangente = maiorValor*t-(atraso-1);

figure(1)
plot(y)
hold on 
plot(retaTangente)
title('Gráfico com a reta tangente ao ponto de inflexão')
legend('Gráfico a ser estimado','Reta tangente ao ponto de inflexão')
xlabel('Tempo (s)')
ylabel('Temperatura')

% determina o valor da contante de tempo
constempo = 1/maiorValor * (y(length(y))+atraso);
constempo = constempo - (atraso+1);

disp(atraso)
disp(constempo)

figure(2)
plot(y)
hold on 

syms d s
U= y(length(y))*exp(-atraso*s)/(constempo*(s)+1);
G=(1)/(s);
H=G*U;
h=matlabFunction(ilaplace(H));
d=1:0.01:1000;
plot(d,h(d))

title('Gráfico com o modelo')
legend('Real','Estimado')
xlabel('Tempo (s)')
ylabel('Temperatura')

x = step(10)
err = immse(x,y)
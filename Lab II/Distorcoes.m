home
clear;

music = 'Monsieur_Dutour.wav'; #dando um nome ao arquivo
[y,fs]= audioread(music); #guardando os dados do arquivo, onde fs é a frequência de amostragem
figure(1) #plot da onda da música
x=y(1:1400000,1); #Atribuindo à variável x o valor de y sobre uma frequência de amostragem arbitrária que corresponde mais ou menos do começo ao fim da música
z=flipud(x); #atribuindo à variável z o valor de uma função no octave que reflete a onda com relação ao eixo y e a posiciona a partir do ponto 0
plot(x); #plot de x ainda na figure 1
figure(2) #começo da figure 2 para plot de z
plot(z); #o próprio plot de z (x refletido)
fator=0.90; #valor que pode ser multiplicado à frequência de amostragem com o intuito de, caso maior que 1, acelerar a música ou, caso maior que 0 e menor que 1, deixá-la mais lenta. Caso o fator seja igual a um, a "velocidade" com que a música aparenta estar mantém-se como a do arquivo original.
player = audioplayer(z, fs*fator); #armazenando em player o valor de audioplayer, que possibilita a reprodução da mídia futuramente. Note que o valor da frequência de amostragem está a ser multiplicado pelo fator. Aqui foram testadas tanto a variável x quanto z.
play(player); #a própria função que reproduz a mídia


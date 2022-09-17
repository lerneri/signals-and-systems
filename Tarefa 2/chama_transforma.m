a=-1.5 #declarando variável a
b=20 #declarando variável b
c=transforma(a,b) #chamando a função transforma e armazenando seu resultado "y" na variável c
figure(1) #desenhando a figura 1
n=linspace(0,20,200) #reproduzindo o mesmo vetor utilizado na função
plot(exp(n),'b-') #plot da função "x" da função transforma
hold #para melhor visualização da transformação realizada, foi usado um comando para manter o plot da função cosseno onde está, para efeitos de comparação
plot(c,'r-') #plot do retorno "y" da função transforma

#último item: é perceptível que a constante "a" acelera a função,isto é, diminui o tempo necessário para se chegar em certo ponto, comparada com a função original.
#caso "a" esteja entre 0 e 1, a função "desacelera".
#caso "a" seja menor que um, a função é refletida em torno do eixo y.
#caso seja refletida, se for menor que -1 a função é refletida e "acelera", e se estiver entre 0 e -1, ela é refletida e "desacelera".

#já a constante "b" desloca a função no gráfico.
#caso b seja positivo, o deslocamento se dá para a direita. caso contrário, se dá para a esquerda.

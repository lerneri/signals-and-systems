a=1.5 #declarando variável a
b=pi #declarando variável b
c=transforma(a,b) #chamando a função transforma e armazenando seu resultado "y" na variável c
figure(1) #desenhando a figura 1
n=linspace(0,4*pi,200) #reproduzindo o mesmo vetor utilizado na função
plot(cos(n),'b-') #plot da função "x" da função transforma
hold #para melhor visualização da transformação realizada, foi usado um comando para manter o plot da função cosseno onde está, para efeitos de comparação
plot(c,'r-') #plot do retorno "y" da função transforma

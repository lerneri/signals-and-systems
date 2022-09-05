clear all
z=1+sqrt(-1)
real(z)
imag(z)
z=1+sqrt(-100)
real(z)
imag(z)

figure(1)
clf
plot(z, 'ro')
xlabel('componente real')
ylabel('componente imaginária')
title('Gerar número complexo no plano')
z2=pi+sqrt(2)*i
hold on
plot(z2,'ks')
plot(z+z2,'pb')
axis([0 5 0 25])

figure(2)
clf
t=linspace(0,2*pi)
plot(t,cos(t),'-r');
hold on
plot(t,sin(t),'-b');
xlabel('t');
title('Funções Trigonométricas')

figure(3)
clf
t=linspace(0,10)
z=-1
plot(t,exp(z*t),'r-')
title('Plots envolvendo a função exponencial')
hold on
z=1E-1
plot(t,exp(z*t),'k--')
z=5.0*i
plot(t,exp(z*t),'b-.')
z=-1+5.0*i
plot(t,exp(z*t),'k:')
xlabel('t');

figure(4)
clf
plot(t,real(exp(z*t)),'b-')
hold on
plot(t,imag(exp(z*t)),'g-')
xlabel('t');
title('"Plots" parte real e Parte imaginária da função exponencial')
legend('real','imag')

figure(5)
clf
t=linspace(0,10)
z=1i
plot(exp(z*t),'r-')
title('"plots" envolvendo a função exponencial')
hold on
axis image
z=-1+1i
plot(exp(z*t),'g--')
z=0.1+1i
plot(exp(z*t),'b-.')
xlabel('componente real');
ylabel('componente imaginária');

figure(6)
clf
t=linspace(0,8*pi)
z=0.05+i
plot(exp(z*t),'r-')
xlabel('componente real')
ylabel('componente imaginária')

clc;
clear all;
clf;

Gzd = tf([-0.03175 0 0.03175], [1.3016 -1.238 0], 0.1);
Gsd = d2c(Gzd, 'tustin');

Gz = tf([-0.03175 0 0.03175], [1.3016 -1.238 0], 1);
Gs = d2c(Gz, 'tustin');

r1 = step(Gzd);
r2 = step(Gsd);
r3 = step(Gz);
r4 = step(Gs);

figure 1
plot(r1, 'r');
hold on;
plot(r2, 'b');
title('Comparação entre as funções G(z) e G(s), para T=0,1');
figure 2
plot(r3, 'r');
hold on;
plot(r4, 'b');
title('Comparação entre as funções G(z) e G(s), para T=1');

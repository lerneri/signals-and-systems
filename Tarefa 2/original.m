home
clear;

music = '01_MULHERES.wav';
[y,fs]= audioread(music);
player = audioplayer(y, fs);
play(player);
figure(1)
x=y(1:1323000,1);
plot(x);
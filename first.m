clear all;
close all;
clc;

wc = pi/4;   %cut off freq
ts = 1e-3;   %sampling time
N = 1024;

%part a
a = (1-sin(wc))/cos(wc)
num = [1-a,1-a];
den = [2,-a*2];
lpf1 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of LPF with a = (1-sin(wc))/cos(wc)');

%for a = 0.5
a = 0.5;
num = [1-a,1-a];
den = [2,-a*2];
lpf2 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of LPF with a = 0.5');

%for a = 0.7
a = 0.7;
num = [1-a,1-a];
den = [2,-a*2];
lpf3 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of LPF with a = 0.7');

%for a = 0.8
a = 0.8;
num = [1-a,1-a];
den = [2,-a*2];
lpf4 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of LPF with a = 0.8');
clear all;
close all;
clc;

wc = (0.4)*pi;    %center freq
ts = 1e-3;   %sampling time
N = 1024;

%part 1
band = (0.1)*pi;
p = [cos(band),-2,cos(band)];
r = roots(p);
if r(1)<1
    a = r(1);
else
    a = r(2);
end
b = cos(wc);
num = [1*(1+a),-2*b*(1+a),1+a];
den = [2,-2*b*(a+1),2*a];
bsf = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of standard 2nd order BSF');

%for b = 0.5 and a = 0.2
a = 0.2;
b = 0.5;
num = [1*(1+a),-2*b*(1+a),1+a];
den = [2,-2*b*(a+1),2*a];
bsf11 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of BSF with b=0.5 and a=0.2');

%for b = 0.5 and a = 0.5
a = 0.5;
b = 0.5;
num = [1*(1+a),-2*b*(1+a),1+a];
den = [2,-2*b*(a+1),2*a];
bsf12 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of BSF with b=0.5 and a=0.5');

%for b = 0.5 and a = 0.8
a = 0.2;
b = 0.8;
num = [1*(1+a),-2*b*(1+a),1+a];
den = [2,-2*b*(a+1),2*a];
bsf13 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of BSF with b=0.5 and a=0.8');

%for b = 0.1 and a = 0.6
a = 0.6;
b = 0.1;
num = [1*(1+a),-2*b*(1+a),1+a];
den = [2,-2*b*(a+1),2*a];
bsf21 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of BSF with b=0.1 and a=0.6');

%for b = 0.5 and a = 0.6
a = 0.6;
b = 0.5;
num = [1*(1+a),-2*b*(1+a),1+a];
den = [2,-2*b*(a+1),2*a];
bsf22 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of BSF with b=0.5 and a=0.6');

%for b = 0.8 and a = 0.6
a = 0.6;
b = 0.8;
num = [1*(1+a),-2*b*(1+a),1+a];
den = [2,-2*b*(a+1),2*a];
bsf23 = tf(num,den,ts)
figure
freqz(num,den,N);
title('Frequency Response of BSF with b=0.8 and a=0.6');
n1 = round(log10(0.01)/log10(0.9));
n2 = round(log10(0.001)/log10(0.9));

h1 = zeros(1,n1);
for ii = 1:n1
    h1(ii) = imp1(ii)*(-0.9)^ii;
end
freqz(h1);
[x11 fs1] = audioread('Signal_Processing_Audio.mp3');
x1 = x11(:,1);
x1_new = x1(1:2*fs1);
y1 = conv(x1_new,h1);
sound(x1_new,fs1);
sound(y1,fs1);
figure();
plot(y1);

h12 = zeros(1,n2);
for ii = 1:n2
    h12(ii) = imp1(ii)*(-0.9)^ii;
end
figure();
freqz(h12);
y12 = conv(x1_new,h1);
sound(y12,fs1);
figure();
plot(y12);

%h2
h21 = zeros(1,n1);
for ii = 1:n1
    h21(ii) = imp1(ii)*(-0.9)^ii+imp1(ii)*(0.9)^ii;
end
figure();
freqz(h21);
y21 = conv(x1_new,h1);
sound(y21,fs1);
figure();
plot(y21);

h22 = zeros(1,n2);
for ii = 1:n2
    h22(ii) = imp1(ii)*(-0.9)^ii+imp1(ii)*(0.9)^ii;
end
figure();
freqz(h22);
y22 = conv(x1_new,h1);
sound(y22,fs1);
figure();
plot(y22);

%h3

h31 = zeros(1,n1);
for ii = 1:n1
    h31(ii) = imp1(ii)*(0.5)^ii+imp1(ii)*(0.9)^ii;
end
figure();
freqz(h31);
y31 = conv(x1_new,h1);
sound(y31,fs1);
figure();
plot(y31);

h32 = zeros(1,n2);
for ii = 1:n2
    h32(ii) = imp1(ii)*(0.5)^ii+imp1(ii)*(0.9)^ii;
end
figure();
freqz(h32);
y32 = conv(x1_new,h1);
sound(y32,fs1);
figure();
plot(y32);
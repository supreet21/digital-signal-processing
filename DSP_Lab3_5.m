x_n = [1 2 3 4];
h_n = [0 1 0 0];
y = conv(x_n,h_n)

X_n = fft(x_n);
H_n = fft(h_n);
Y = X_n.*H_n;
Id = Y*inv(D) 

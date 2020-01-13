function [D]=dftmtx(N)
for k=1:N
    for n=1:N
        D(n,k)=exp((1j*2*pi*(k-1)*(n-1))/N);
    end
end


function B = IDFTmatrix(N)
B=zeros(N);
for k=1:N
    for n=1:N
        B(k,n)=exp(1i*2*pi*(n-1)*(k-1)/N)/N;
    end
end
end


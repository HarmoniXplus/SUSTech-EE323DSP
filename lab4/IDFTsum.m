function x = IDFTsum(X)
N=length(X);
x=zeros(1,N);
n=0:N-1;
for k=0:N-1
    x(k+1)=sum(X.*exp(1i*2*pi*n*k/N))/N;
end
end


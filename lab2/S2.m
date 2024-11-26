function y = S2(x)
%y[n]=0.5*y[n-1]+x[n]
L=length(x);
y=zeros(1,L);
for n=2:L
    y(n)=x(n)+y(n-1)/2;
end
end

function y = S1(x)
%y[n]=x[n]-x[n-1]
L=length(x);
y=zeros(1,L);
for n=2:L
    y(n)=x(n)-x(n-1);
end
end



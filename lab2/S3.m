function y=S_3(x)
% y[n]=-0.5*x[n-1]+x[n]
L=length(x);
y=zeros(1,L);
for n=2:L
    y(n)=-0.5*x(n-1)+x(n);
end
end


function y = differentiator(x)
%DIFFERENTIATOR 微分
L=length(x);
y=zeros(1,L);
for n=2:L
    y(n)=x(n)-x(n-1);
end
end


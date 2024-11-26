function y = integral(x)
%INTEGRAL 积分
L=length(x);
y=zeros(1,L);
for n=2:L
    y(n)=y(n-1)+(x(n)+x(n-1))/2;
end
end


function result2 = integral2(N)
%INTEGRAL1 y=exp(t) on the interval [0, 1]
delta=1/N;
t=linspace(0,1-delta,N);
y=exp(t);
r=y.*delta;
result2=sum(r);
end


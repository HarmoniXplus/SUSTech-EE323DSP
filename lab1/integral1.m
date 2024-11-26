function result1 = integral1(N)
%INTEGRAL1 y=sin^2(5t) [0,2pi]
delta=2*pi/N;
t=linspace(0,2*pi-delta,N);
y=(sin(5*t)).^2;
r=y.*delta;
result1=sum(r);
end


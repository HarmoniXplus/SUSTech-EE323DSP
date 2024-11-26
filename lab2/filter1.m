function y=filter1(x)
%avgvalue[today] = 0.8 * avgvalue[yesterday] + 0.2 * (value[today]) 
L=length(x);
y=zeros(1,L);
y(1)=0.2*x(1);
for n=2:L
       y(n)=0.8*y(n-1)+0.2*x(n);
end
end


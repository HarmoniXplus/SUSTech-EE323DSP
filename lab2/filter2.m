function y=filter2(x)
%avgvalue[today] = avgvalue[yesterday] + 1/3(value[today]−value[3 daysago]) 
L=length(x);
y=zeros(1,L);
y(1)=1/3*x(1);
y(2)=y(1)+1/3*x(2);
y(3)=y(2)+1/3*x(3);
for n=4:L
    y(n)=y(n-1)+1/3*(x(n)-x(n-3));
end
end

function X = FFT4(x)
%FFT4 x长度为4
X = zeros(1,4);
x0 = [x(1) x(3)];
x1 = [x(2) x(4)];
X0 = FFT2(x0);
X1 = FFT2(x1);
for k = 0:4/2-1
    W = exp(-1i*2*pi*k/4);
    X(k+1) = X0(k+1) + W*X1(k+1);
    X(k+1+4/2) = X0(k+1) - W*X1(k+1);
end
end


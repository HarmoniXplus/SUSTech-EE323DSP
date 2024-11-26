function X = FFT8(x)
%FFT8 x长度为8
X = zeros(1,8);
x0 = x(1:2:8-1);
x1 = x(2:2:8);
X0 = FFT4(x0);
X1 = FFT4(x1);
for k = 0:8/2-1
    W = exp(-1i*2*pi*k/8);
    X(k+1) = X0(k+1) + W*X1(k+1);
    X(k+1+8/2) = X0(k+1) - W*X1(k+1);
end
end



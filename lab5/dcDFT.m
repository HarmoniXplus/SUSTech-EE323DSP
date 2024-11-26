function X = dcDFT(x)
% x is a vector of even length 𝑁, and X is its DFT
N = length(x);
x0 = x(1:2:N-1);
x1 = x(2:2:N);
X0 = DFTsum(x0);
X1 = DFTsum(x1);
X = zeros(1,N);
for k = 0:N/2-1
    W = exp(-1i*2*pi*k/N);
    X(k+1) = X0(k+1) + W*X1(k+1);
    X(k+1+N/2) = X0(k+1) - W*X1(k+1);
end
end


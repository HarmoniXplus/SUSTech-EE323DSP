function X = fft_stage(x)
%FFT_STAGE performs one stage of the FFT algorithm for a power-of-2 length signal
N = length(x);
X = zeros(1,N);
if N == 2
    X = FFT2(x);
elseif N > 2
    x0 = x(1:2:N-1);
    x1 = x(2:2:N);
    X0 = fft_stage(x0);
    X1 = fft_stage(x1);
    for k = 0:N/2-1
        W = exp(-1i*2*pi*k/N);
        X(k+1) = X0(k+1) + W*X1(k+1);
        X(k+1+N/2) = X0(k+1) - W*X1(k+1);
    end
end
end


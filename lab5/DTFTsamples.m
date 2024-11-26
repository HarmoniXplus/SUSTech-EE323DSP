function [X,w] = DTFTsamples(x)
N=length(x);
X=DFTsum(x);
w=2*pi/N*(0:N-1);
w=w-2*pi*(w>=pi);
X=fftshift(X);
w=fftshift(w);
end

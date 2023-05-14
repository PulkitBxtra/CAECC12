clc;
clear all;
close all;

n=100;
x=rand(1,n);
u=255;
xcomp = ((log(1+(abs (x) ./max(x)) .*u)) ./log(1+u));
vmin = min(xcomp);
vmax = max(xcomp);
xpow = sum(xcomp.^2)/n;
for i=1:1:14
    L(i) = 2^i;
    d = (vmax-vmin)/L(i);
    for j=1:length(xcomp)
        start = min(xcomp);
        while (start<xcomp(j))
            start = start + d;
        end
        xq(j) = start - d;
        if(start == x(j))
            xq(j) = start;
        end
    end
    err = xcomp-xq;
    noisepow(i) = sum(err.^2)/n;
end
sqnr = xpow./noisepow;
sqnrdb = 10.*log10(sqnr);
plot(L,sqnrdb)
xlabel('number of quantization levels');
ylabel('SqNR');
title('Non-Uniform Quantization')


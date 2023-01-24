function ray = rndrayleigh(sig)
x = -2*log10(1-rand());
ray = sig*sqrt(x);
end
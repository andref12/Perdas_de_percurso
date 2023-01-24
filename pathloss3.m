pi = 3.141592;
%ganho do transmissor(dB)
G1 = 6;
%ganho r(dB)eceptor
G2 = 0;
%frequencia transmitida(Hz)
f = 60*10^9;
%calculo do comprimento de onda
lam = (3*10^8)/f;
%conversão para numero puro
G1 = dBnump(G1);
G2 = dBnump(G2);
%gerando vetor para valores de d
d = 0:1:500;
[tma,tmb] = size(d);
rnda = zeros(tma,tmb);
rndb = zeros(tma,tmb);
for i=1:tmb
    rnda(i) = rndrayleigh(1);
    rndb(i) = lognrnd(0,1);
end
pthl = numpdB((G1.*G2.*(lam./((4*pi).*d)).^2).*rnda.*rndb);


plot(d,pthl);
ylabel('Potência(dB)')
xlabel('Distância(m)')
grid on
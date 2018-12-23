T=40;
f=1/T;
w=2*pi*f;
rez=.001;
t=0:rez:4*T; %reprezentam patru perioade
N=50;
duty=11/T*100; %durata este D=11
x=(1+square(w*t,duty))/2; %am adunat un 1 si am impartit la 2 pentru ca
%amplitudinea semnalului sa ia valori intre 0 si 1
%calculam coeficientii Fourier conform formulei:
for k = -N:N
    C(k+N+1) = 1/T * integral(@(t)((1+square(w*t,duty))/2).*exp(-1i*k*w*t),0,T) ;
    %C(k+N+1) deoarece indicii trebuie sa fie pozitivi
    %@(t) <=> dt
end
%calculam seria trunchiata:
sum = 0;
for k = -N:N
    sum = sum + C(k+N+1)*exp(1i*k*w*t) ;
end
figure(1);
%reprezentam spectrul de amplitudini
hold on
for k=-N:N
stem(k*w,2*abs(C(k+N+1)),'.g'); %Ak=2*|Ck|
end %stem este o functie ce reprezinta o anumita valoare
%printr-un segment pornind de pe axa Ox
xlabel('fk');
ylabel('Ak');
title('Spectrul de amplitudini');
hold off
figure(2);
%reprezentam cele doua semnale (initial si reconstruit prin serie Fourier)
hold on
plot(t,real(sum),'-.r'); %partile imaginare ar fi ignorate daca instructiunea ar fi plot(t,sum)
plot(t,x);
xlabel('t[s]');
title('Semnalul initial (albastru) si Semnalul reconstruit (rosu)');
hold off
%Observam din grafic ca seria Fourier, trunchiata la un numar adecvat de 
%termeni, este o buna aproximare pentru semnalul teoretic
%Acest lucru este util pentru reconstruirea unui semnal atunci cand
%dispunem de un spectru de amplitudini masurat la aparat

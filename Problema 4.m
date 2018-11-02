%rezolutie temporara de 2 ms
t=0:0.002:9; %se vor afisa 3 perioade
ampl=0.4;
s=ampl*(sin(2*(pi/3)*t))+abs(ampl*(sin(2*(pi/3)*t)))
subplot(3,1,1)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')
%pentru a obtine acest semnal, am procedat in felul urmator:
%am adunat un semnal cu jumatate din amplitudinea ceruta cu acelasi
%semnal, dar in modul
%pe portiunile pozitive, semnalul isi va dubla amplitudinea, ajungand la
%valoarea ceruta
%portiunile negative ale semnalului se vor anula cu cele pozitive ale
%semnalului modulat

%rezolutie temporara de 20 ms
t=0:0.02:9; %se vor afisa 3 perioade
ampl=0.4;
s=ampl*(sin(2*(pi/3)*t))+abs(ampl*(sin(2*(pi/3)*t)))
subplot(3,1,2)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')

%rezolutie temporara de 200 ms
t=0:0.2:9; %se vor afisa 3 perioade
ampl=0.4;
s=ampl*(sin(2*(pi/3)*t))+abs(ampl*(sin(2*(pi/3)*t)))
subplot(3,1,3)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')
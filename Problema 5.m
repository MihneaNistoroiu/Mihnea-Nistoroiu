%rezolutie temporara de 2 ms
t=0:0.002:12;
f=0.25; %se vor afisa 3 perioade
ampl=1.5;
s=ampl*abs(sin(2*pi*f*t));
subplot(3,1,1)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')

%rezolutie temporara de 20 ms
t=0:0.02:12;
f=0.25; %se vor afisa 3 perioade
ampl=1.5;
s=ampl*abs(sin(2*pi*f*t));
subplot(3,1,2)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')

%rezolutie temporara de 200 ms
t=0:0.2:12;
f=0.25; %se vor afisa 3 perioade
ampl=1.5;
s=ampl*abs(sin(2*pi*f*t));
subplot(3,1,3)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')


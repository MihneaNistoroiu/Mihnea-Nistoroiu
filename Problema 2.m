%rezolutie temporara de 2 ms
t=0:0.002:15;
f=0.2; %se vor afisa 3 perioade
cc=0.5;
ampl=1.5;
x=ampl*sawtooth(2*pi*f*t)-cc; 
subplot(3,1,1)
plot(t,x),grid,xlabel('t [s]'),ylabel('U [V]')
%am dedus componenta continua (+1-2)/2=-0.5, iar amplitudinea (+1-(-2)/2)=1.5
%am folosit functia subplot pentru a aseza cele trei grafice pentru cele
%trei rezolutii pe o singura figura

%rezolutie temporara de 20 ms
t=0:0.02:15;   
f=0.2; %se vor afisa 3 perioade
x=1.5*sawtooth(2*pi*0.2*t)-0.5;
subplot(3,1,2)
plot(t,x),grid,xlabel('t [s]'),ylabel('U [V]')


%rezolutie temporara de 200 ms
t=0:0.2:15;   
f=0.2; %se vor afisa 3 perioade
x=1.5*sawtooth(2*pi*0.2*t)-0.5;
subplot(3,1,3)
plot(t,x),grid,xlabel('t [s]'),ylabel('U [V]')
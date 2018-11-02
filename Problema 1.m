%rezolutie temporara de 2 ms
t=0:0.002:6;
f=0.5;%se vor afisa 3 perioade
w=2*pi*f;
duty=25;
cc=0.25;
ampl=0.75;
s=(ampl*square(w*t,duty))-cc;
subplot(3,1,1)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')
%pentru un semnal cu nivelul minim = -1 si nivelul maxim = 0.5,
%componenta continua este -0.25
%asa ca alegem amplitudinea 0.5+0.25=0.75
%am folosit functia subplot pentru a incadra graficele pentru toate rezolutiile intr-o singura figura

%rezolutie temporara de 20 ms
t=0:0.02:6;
f=0.5;%se vor afisa 3 perioade
w=2*pi*f;
duty=25;
cc=0.25;
ampl=0.75;
s=(ampl*square(w*t,duty))-cc;
subplot(3,1,2)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')

%rezolutie temporara de 200 ms
t=0:0.2:6;
f=0.5;%se vor afisa 3 perioade
w=2*pi*f;
duty=25;
cc=0.25;
ampl=0.75;
s=(ampl*square(w*t,duty))-cc;
subplot(3,1,3)
plot(t,s),grid,xlabel('t [s]'),ylabel('U [V]')
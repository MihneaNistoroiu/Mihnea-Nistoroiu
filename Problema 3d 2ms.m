hold on; %aceasta functie asigura reprezentarea tuturor semnalelor componente pe aceeasi figura
%rezolutie temporara de 2ms
r1=rand(1);
r2=rand(1);
r3=rand(1);
r4=rand(1);
r5=rand(1);
r6=rand(1);
r7=rand(1);
r8=rand(1);
t=0:.002:0.25;
x1=r1*square(2*pi*4*t,100);%am ales factorul de umplere 100 pentru a pastra un nivel constant
x2=-r2*square(2*pi*4*t,100);
x3=3*r3*square(2*pi*4*t,100);
x4=-3*r4*square(2*pi*4*t,100);
x5=5*r5*square(2*pi*4*t,100);
x6=-5*r6*square(2*pi*4*t,100);
x7=7*r7*square(2*pi*4*t,100);
x8=-7*r8*square(2*pi*4*t,100);
plot(t,x1);
plot(t-0.25,x2);%am deplasat al doilea semnal pentru a-l pozitiona la stanga primului
plot(t+0.25,x3);
plot(t-0.5,x4);
plot(t+0.5,x5);
plot(t-0.75,x6);
plot(t+0.75,x7);
plot(t-1,x8);
xlabel('T [s]')
ylabel('U [V]')
title('Semnal dreptunghiular multinivel aleator')
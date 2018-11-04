hold on; %aceasta functie asigura reprezentarea tuturor semnalelor componente pe aceeasi figura
%rezolutie temporara de 2ms
r1=rand(1);
r2=rand(1);
t=0:.002:0.25;
x1=r1*square(2*pi*4*t,100);%am ales factorul de umplere 100 pentru a pastra un nivel constant
x2=-r2*square(2*pi*4*t,100);
plot(t,x1);
plot(t-0.25,x2);%am deplasat al doilea semnal pentru a-l pozitiona la stanga primului
xlabel('T [s]')
ylabel('U [V]')
title('Semnal dreptunghiular multinivel aleator')
function dx=C_RLC(t,x)
%-----Definimos nuestro parametros------%
R= 120;  %Ohms
L= 4e-3;  %Henrios
C= 0.1e-6; %Faradios

%-------------Formacion de la onda cuadrada con función pulstran----------%
A=0.001; % Ancho de la onda
T= 0.002; % Periodo (s)
d=0:T:t; % Rango de posiciones de la onda
V1= pulstran(t-0.0005,d,'rectpuls',A)*12;

%------Creamos nuestra matriz de las variables de estado----%
dx=zeros(2,1);
%-----Definición dinamica del sistema (Representanción de estados)-----%
dx(1)=x(2);
dx(2)=(1/L)*((-R*x(2))-((1/C)*x(1))+V1);
%-----------------------------------------------------------------------%
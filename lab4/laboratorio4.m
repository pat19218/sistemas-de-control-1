%% Universidad del Valle de Guatemala
%  Sistemas de Control 1     Sección: 21
%  Cristhofer Patzán         Carnet:  19218
%  Renato Mendizábal         Carnet:  18007
%  Laboratorio 4

%% Primera Parte: Análisis y Modelado

%% Segunda parte:Simulación y estudio del circuito
caso = 6;

switch caso
    case 1
        %Primer caso, datos originales
        R1 =4.7e3; R2 =10e3;
        C1 = 10e-6; C2 = 0.1e-6;
    case 2
        %segundo caso, Polos complejos conjugados, más cercanos al eje real
        R1 =4.7e3; R2 =10e3;
        C1 = 10e-6; C2 = 0.2e-6;
        %mientras mas grande c2, 
        %mas cerca al eje real
    case 3
        %Tercer caso, Polos complejos conjugados, más alejados del eje real
        R1 =4.7e3; R2 =10e3;
        C1 = 10e-6; C2 = 0.05e-6;
        %mientras mas pequenio c2, 
        %mas lejos del eje real
    case 4
        %cuarto caso,Polos complejos conjugados más alejados del eje imaginario
        R1 =1e3; R2 =10e3;
        C1 = 10e-6; C2 = 0.20e-6;
        %mientras mas pequenio R1, 
        %mas lejos del eje imaginario
    case 5
        %quinto caso,Polos complejos conjugados,más cercanos al eje imaginario
        R1 =10e3; R2 =10e3;
        C1 = 10e-6; C2 = 0.20e-6;
        %mientras mas grande R1, 
        %mas cerca del eje imaginario
    case 6
        %sexto caso,Polos reales iguales (aprox -15.64)
        R1 = 6e3; R2 =6e3;
        C1 = 10e-6; C2 = 10e-6;
        %R1 y R2 deben ser iguales para tener tener multiplicidad 2 los
        %polos
    case 7
        %septimo caso,Polos reales distintos
        R1 = 30e3; R2 =30e3;
        C1 = 10e-6; C2 = 10e-6;
        %R1 y R2 deben ser iguales para tener tener multiplicidad 2 los
        %polos
end
a = 1/(R1*R2*C1*C2);
b = (R1+R2)/(R1*R2*C1);
c = 1/(R1*R2*C1*C2);

G1 = tf(a,[1,b,c]);
p = pole(G1);

%step(5*G1);
pzplot(G1);

%% Universidad del Valle de Guatemala
%  Sistemas de Control 1     Sección: 21
%  Cristhofer Patzán         Carnet:  19218
%  Renato Mendizábal         Carnet:  18007
%  Laboratorio 3
clc;clear;
syms s;
%% Primera Parte: Análisis y Modelado

%  1.Obener el coeficiente principal del denominador debe quedar igual a 1. 
%  Pueden emplear la Symbolic Math Toolbox para ayudarse en la manipulación
%  algebraica. Deberán mostrar la función de transferencia obtenida 
%  (evaluada). Usen un editor de ecuaciones.
%  Asuman que 
M1 = 320;       % 𝑘𝑔 
M2 = 2500;      % 𝑘𝑔
k  = 500000;    % 𝑁/𝑚
fv = 15020;     % 𝑁𝑠/𝑚
ks = 80000;     % 𝑁/𝑚
fs = 350;       % 𝑁𝑠/𝑚 


% Las funciones quedanron de la siguiente manera
G1Num = 1;
G1Den = [M1, fs + fv, k + ks];

G2Num = [fv, k];
G2Den = [M2, fs, ks];

G3Num = [fs, ks];
G3Den = [M1, fs + fv, k + ks];

G1 = tf(G1Num,G1Den);
G2 = tf(G2Num,G2Den);
G3 = tf(G3Num,G3Den);

G = (G1*G2)/(1 - (G2*G3));

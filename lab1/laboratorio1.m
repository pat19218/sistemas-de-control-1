%% Sistemas de control 1 - Laboratorio (2022)
% Laboratorio 1
% Cristhofer Isaac Patzán Martínez 
% Carne: 19218, IE3036 seccion 21

%% Primera Parte
%
%                1
%-------------------------------- = H(s)
%s^2 (4.7x10-9) + s (0.20147) + 1
%                                                                         
%impulsional --> inversa laplace{ 1 * G(s) }
%escalon     --> inversa laplace{ 1/s * G(s) }

R1 = 4700;
R2 = 10000; 
C1 = 10e-6;
C2 = 0.1e-6;

syms s;
h =  / ();
H = ilaplace(h);

disp(" Usando pretty ")
pretty(H)



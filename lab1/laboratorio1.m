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
nume = 1/(C1*C2*R1*R2);
deno = s^2 + s*(1/(C1*R1) + 1/(C1*R2)) + 1/(C1*C2*R1*R2);
h =  nume / deno;

num = 1/(C1*C2*R1*R2);
den = [1, 1/(C1*R1) + 1/(C1*R2), 1/(C1*C2*R1*R2)] ;
hh = tf(num, den);

H = ilaplace(h);    %IMPULSO
D = ilaplace(h/s);  %Escalon

disp(" Funcion IMPULSO")
pretty(H)
disp(" Funcion ESCALON")
pretty(D)


%empiezo a hacer grafica
figure('Name', 'figura 1 CRIS_PAT','NumberTitle','off');    %ventana
%Encabezado
hi = sgtitle('lab1 , CrisPat 19218, 1IE3036, sección:21');
hi.FontSize = 18;
hi.Color = 'r';
hi.FontName = 'verdana';

subplot(2,1,1)
fplot(H, [0, 0.5]); %fplot, nos sirve para funciones simbolicas no para numeros
grid on
title('Respuesta Impulso');
ylabel('voltaje');
xlabel('tiempo');

subplot(2,1,2)
t = linspace(0, 0.5, 1000);
y = double(subs(D));
plot(t, y); %fplot, nos sirve para funciones simbolicas no para numeros
grid on
title('Respuesta Escalon');
ylabel('voltaje');
xlabel('tiempo');
close all
clear all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Descripcion: Este rutero grafica la Series de Fourier, Series de
% Fourirer de Cosenos y Serie de Fourier de Senos (truncadas a termino N)
% asociadas a la funcion f(x) = x , con 0 < x < 1.

f = @(x) x; % Funcion f(x) = x

T = 2; %periodo

N = 2;% Numero de terminos en la Serie de Fourier

Nplot = 10000; % Numero de puntos a graficar
a = 3;
intervalo = [-(2*a-1)*T/2 (2*a-1)*T/2]; % Intervalo a graficar
x = linspace(intervalo(1),intervalo(2), Nplot); 



% Evaluando Serie de Fourier (S.F.)
n = 1 : N;
SF = zeros(1,Nplot);
for k = 1 : Nplot
    SF(k) = 1/2-1./pi.*sum(sin(2.*n.*pi.*x(k))./n);
end
%set(h_leg,'box','off','Xcolor',[1 1 1],'Ycolor',[1 1 1])


% Datos para graficar la extension par periodica de f(x)
[t_new Eeval] = f_per(T,intervalo);
figure
plot(t_new ,Eeval,'b',x,SF,'r')
str_leg = strcat('S.F. con N=',num2str(N)) ;
h_leg = legend('Extension periodica de f(x)=x', str_leg,'Location','NorthWest');
set(gca,'FontSize',18)
axis([-a*T a*T -0.5 1.5]);


% Evaluando Serie de Fourier de Cosenos (S.F.C.)
n = 1 : N;
SFC = zeros(1,Nplot);
for k = 1 : Nplot
    SFC(k) = 1/2-4/(pi^2).*sum(cos((2.*n-1).*pi.*x(k))./((2.*n-1).^2));
end

% Datos para graficar la extension par periodica de f(x)
[t_new Eeval] = f_par(T,intervalo);
figure
plot(t_new ,Eeval,'b',x,SFC,'r')
str_leg = strcat('S.F.C. con N=',num2str(N)) ;
h_leg = legend('Extension par f(x)=x', str_leg,'Location','NorthWest');
axis([-a*T a*T -0.5 1.5]);
set(gca,'FontSize',18)


% Evaluando Serie de Fourier de Senos (S.F.S.)
n = 1 : N;
SFS = zeros(1,Nplot);
for k = 1 : Nplot
    SFS(k) = 2.*sum(sin(n.*pi.*x(k)).*(-1).^(n+1)./n)./pi;
end

% Datos para graficar la extension par periodica de f(x)
[t_new Eeval] = f_impar(T,intervalo);
figure
plot(t_new ,Eeval,'b',x,SFS,'r')
str_leg = strcat('S.F.S. con N=',num2str(N)) ;
h_leg = legend('Extension impar f(x)=x', str_leg,'Location','NorthWest');
axis([-a*T a*T -1.5 1.5]);
set(gca,'FontSize',18)




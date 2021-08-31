% Function: Julia.m
% 
% Descripción:
% Esta función es un caso particular del conjunto de Mandelbrot 
% en la que se analiza la convergencia de la función f(z) = z^n + c 
% donde c pertenece a los reales, se evalúa la convergencia de la función 
% para diferentes números complejos, si la función converge el número se incluye 
% de lo contrario no se incluye. 

% Parámetros:
% n es el exponente que a acompaña a z
% rc es la parte real del número complejo 
% ic es la parte imaginaria del número complejo 
function matr = Julia(n,rc,ic)  
    wr = -2:0.001:2;                            % intervalo real de -2 a 2
    wi = -2:0.001:2;                            % intervalo imaginario de -2 a 2
    max=1000;
    matr=zeros(length(wr),length(wi));          % matriz de ceros 
    %fprintf('Ingrese el n de la potencia');
    %n = input()
    for a=1:length(wr)
        for b=1:length(wi)
            iter=0;
            z = (wr(a) + wi(b)*1i);             % calculamos el z de nuestra funcion a partir de nuestros ejes 
            while iter<max && abs(z)< 2 
                z = z^n + (rc+(ic*1i));         % calculamos si el núemro complejo converje en 100 iteraciones
                iter = iter +1;
            end
            matr(b,a)=iter;                     % almacenamos los números que convergieron para despúes graficarlos 
        end 
    end
%     image(matr)                               % se grafican los números que convergieron 
%     colormap hot;                             % color de la grafica 
end

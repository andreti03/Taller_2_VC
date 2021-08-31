% Function: Mandelbrot.m
% 
% Descripción: 
% Esta función grafica los números complejos c que convergen de la función 
% z_{n+1} = z_n^2 + c donde n pertenece a los enteros positivos y z,c pertenecen 
% a los complejos, si la función converge para algún c después de un numero de iteraciones, c se incluye,
% de lo contrario no se incluye. 
function Mandelbrot()
    clc
    close
    clear
    wr = -2:0.001:2;                                 % intervalo real de -2 a 2
    wi = -2:0.001:2;                                 % intervalo imaginario de -2 a 2
    max=100;                                         % número de iteraciones 
    matr=zeros(length(wr),length(wi));
    for a=1:length(wr)
        for b=1:length(wi)
            iter=0;
            z = 0;                                   % iniciamos el numero compleo z
            while iter<max
                z = z^2 + (wr(a) + wi(b)*1i);        % calculamos el siguiente z a partir del anterior y construimos c a partir 
                                                     % de todas las combinaciones de números de los dos ejes 
                iter = iter +1;
                if abs(z)> 2                         % moramos si converge 
                    break
                end
            end
            matr(b,a)=iter;                         % se agregan a la matriz los números que convergieron
        end 
    end
    image(matr)                                     % se grafica 
    
end


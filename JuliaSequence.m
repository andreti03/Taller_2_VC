% Function: Julia.m
% 
% Descripción:
% Pinta imagenes del set de mandelbrot con algun parametro alterado

% Parámetros:
% None

function JuliaSequence()

    % Valores por defecto
    i = -2;
    n = 2;
    rc = -0.8;
    ic = 0.156;
    
    % Alterar n
    while i < 10
        res = Julia(n + i,rc,ic);
        image(res)
        i = i + 0.5;
        pause(0.5)
    end
    
    % Alterar real
    i = -2;
    while i < 10
        res = Julia(n,rc + i,ic);
        image(res)
        i = i + 0.5;
        pause(0.5)
    end
    
    % Alterar imaginario
    i = -2;
    while i < 10
        res = Julia(n,rc,ic+i);
        image(res)
        i = i + 0.5;
        pause(0.5)
    end

end
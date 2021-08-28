
function Mandelbrot()
    clc
    close
    clear
    wr = -2:0.001:2;
    wi = -2:0.001:2; 
    max=100;
    matr=zeros(length(wr),length(wi));
    for a=1:length(wr)
        for b=1:length(wi)
            iter=0;
            z = 0;
            while iter<max
                z = z^2 + (wr(a) + wi(b)*1i);
                iter = iter +1;
                if abs(z)> 2
                    break
                end
            end
            matr(b,a)=iter;
        end 
    end
    image(matr)
    
end


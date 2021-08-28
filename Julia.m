function matr = Julia(n,rc,ic)  
    wr = -2:0.001:2;
    wi = -2:0.001:2; 
    max=1000;
    matr=zeros(length(wr),length(wi));
    %fprintf('Ingrese el n de la potencia');
    %n = input()
    for a=1:length(wr)
        for b=1:length(wi)
            iter=0;
            z = (wr(a) + wi(b)*1i);   
            while iter<max && abs(z)< 2 
                z = z^n + (rc+(ic*1i));
                iter = iter +1;
            end
            matr(b,a)=iter;
        end 
    end
%     image(matr)
%     colormap hot;
end

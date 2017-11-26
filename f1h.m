function h = f1h( x )
    
    %Author: Tappan Ajmera, Chin-yi Chu
    %Hessian for function 1

    i = 1:length(x);
    i = i';
    h = i.*(2);
    h=diag(h);

end


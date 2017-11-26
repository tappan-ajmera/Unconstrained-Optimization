function g = f1g( x )
    
    %Author: Tappan Ajmera, Chin-yi Chu
    %Gradient for function 1
    
    i = 1:length(x);
    i = i';
    g = i.*(2*(x));

end


function F = quasi_f(F, s,y )

    %Author: Tappan Ajmera, Chin-yi Chu
    %Function to find F for BFGS method

    F=F+(((y'*((F*y)+s))/((y'*s).^2))*(s*s'))-(((s*y'*F)+(F*y*s'))/(y'*s));


end



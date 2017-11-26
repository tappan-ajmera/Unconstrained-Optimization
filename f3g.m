function p = f3g(x)
    
    %Author: Tappan Ajmera, Chin-yi Chu
    %Gradient for Function 3

    p = [-400*(x(2) - x(1)^2)*x(1) - 2*(1 - x(1));
                200*(x(2) - x(1)^2)];
end
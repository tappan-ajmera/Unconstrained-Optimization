function h = f3h(x)

    %Author: Tappan Ajmera, Chin-yi Chu
    %Hessian for Function 3


    h(1,1) = 1200*(x(1)^2) - 400*x(2) + 2;
    h(1,2) = -400*x(1);
    h(2,1) = -400*x(1);
    h(2,2) = 200;

end
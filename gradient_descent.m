function [x0,b] = gradient_descent(f,g,backtr,x,delta,N)

%Author : Tappan Ajmera, Chin-yi Chu
%Gradient Descent to optimizate functions
%Input: 
% f: function
% g: analytic gradient of function
% backtr: function to bracktrack
% x: input variable
% delta: threshold to which optimize
% n: number of max iteration if not converging point found
  [X,Y] = meshgrid(-2.5:0.1:2.50);

    %function value on the grid
    Z = 100*(Y-X.^2).^2+(1-X).^2;

    %contour plot
    contour(X,Y,Z,40);
    hold on;


    alpha = 1;
    for k=1:N
        
        fprintf("Iteration : %d \n",k)
        x0 = x;
        p = -g(x0);
        alpha = backtr(p,x0,f,g,alpha);
        s_old = alpha*p'*(-p);
        alpha = s_old/(p'*(-p));
        x = x0+alpha*p;
        line(vertcat(x0(1),x(1)),vertcat(x0(2),x(2)));
    plot(x0(1),x0(2),'o');
    plot(x(1),x(2),'o');
    
        if abs(f(x0)-f(x)) <= delta || isnan(abs(f(x0)-f(x)))
            b = f(x0);
            break;
        end
    end
    b = f(x0);

end




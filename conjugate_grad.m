function [x,b] = conjugate_grad(f,g,x,backtr,ea,er,N)


% Author : Tappan Ajmera, Chin-yi Chu
% Conjugate Gradient Descent to optimizate functions
% Input: 
% f: function
% g: analytic gradient of function
% backtr: function to bracktrack
% x: input variable
% ea,er: threshold to which optimize
% n: number of max iteration if not converging point found

    %contour plot of a two dimensional function

    %x,y grid
    [X,Y] = meshgrid(-2.5:0.1:2.50);

    %function value on the grid
    Z = 100*(Y-X.^2).^2+(1-X).^2;

    %contour plot
    contour(X,Y,Z,40);


%line segment to follow the trace of x

%x0: before movement
%x: after movement

    hold on;
    alpha = 1;
    
    %figure,
    %hold on;
    p_x = [];
    p_y = [];

 
for k=1:N
    
    disp(k);
    

    if k == 1
        p = -g(x);
        alpha = backtr(p,x,f,g,alpha);
        s_old = alpha*p'*(-p);
        alpha = s_old/(p'*(-p));
        x_next = x+alpha*p;

    else
        b = (g(x_next)'*g(x_next))/(g(x)'*g(x));
        p = -g(x_next) + b*p;
        x = x_next;
        alpha = backtr(p,x,f,g,alpha);
        x_next = x+alpha*p;
        
    end
    
    
    %disp(abs(f(x)-f(x_next)));
    %p_x = [p_x k];
    %p_y = [p_y f(x)];
    line(vertcat(x(1),x_next(1)),vertcat(x(2),x_next(2)));
    plot(x(1),x(2),'o');
    plot(x_next(1),x_next(2),'o');
   
    if abs(f(x)-f(x_next)) <= (ea+er*f(x_next)) || isnan(abs(f(x)-f(x_next)))
        b = f(x);
        break;
    end
end
   b = f(x);
   %plot(p_x,p_y,'LineWidth',2);
end




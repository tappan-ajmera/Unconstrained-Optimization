function [ x_old,b ] = quasi_newton(q,f,g,backtr,x_init,delta,N )

%Author : Tappan Ajmera, Chin-yi Chu
%Quasi Newton Method to optimizate functions
%Input: 
% q: function to find F from BFGS method
% f: function
% g: analytic gradient of function
% backtr: function to bracktrack
% x: input variable
% delta: threshold to which optimize
% n: number of max iteration if not converging point found


    %required preprocessing 
    x_old=x_init;
    alpha=1;
    quasi=eye(length(x_old));
    p=-(quasi*g(x_old));
    alpha=backtr(p,x_old,f,g,alpha);
    x_new=x_old+(alpha*p);
    s_old = alpha*(p'*(-p));
    fprintf("Iteration : 1 \n")
    
    for k = 2:N
      
        fprintf("Iteration : %d \n",k)
      
        s=x_new-x_old;
        y=g(x_new)-g(x_old);
        quasi = q(quasi,s,y);
        x_old=x_new;
        p=-(quasi*g(x_old));
        alpha=s_old/(p'*(-p));
        alpha=backtr(p,x_old,f,g,alpha);
        x_new=x_old+(alpha*p);
        s_old=alpha*(p'*(-p));
        
        
        if abs(f(x_old)-f(x_new)) <= delta || isnan(abs(f(x_old)-f(x_new)))
            b = f(x_old);
            break;
        end
        
    end

b = f(x_old);

end


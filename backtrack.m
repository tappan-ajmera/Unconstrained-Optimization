function alpha=backtrack(p,x,f,g,alpha_init)
    
    %Author: Tappan Ajmera, Chin-yi Chu
    %Code to backtrack and find value of alpha

    alpha=alpha_init;
    ro=0.5;
    c=0.1;

    while f(x+alpha*p)>f(x)+c*alpha*p'*g(x) 
        alpha=alpha*ro;
    end

end
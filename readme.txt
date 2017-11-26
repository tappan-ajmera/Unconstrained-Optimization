Steps for Unconstrained Optimization

# Execute these commands to run methods for function 3
[x0,b]=newton(@f3,@f3g,@f3h,@backtrack,[-1.2;1],0,1000000);
[x0,b]=quasi_newton(@quasi_f,@f3,@f3g,,@backtrack,[-1.2;1],0,1000000);
[x0,b]=gradient_descent(@f3,@f3g,,@backtrack,[-1.2;1],0,1000000);
[x0,b]=conjugate_grad(@f3,@f3g,[-1.2;1],@backtrack,0.1,0.1,100000)

#Create x as follows for function 2
x=zeros(1,100);
x = x';


# Execute these commands to run methods for function 2
[x0,b]=newton(@f2,@f2g,@f2h,@backtrack_f2,x,0,1000);
[x0,b]=quasi_newton(@quasi_f,@f2,@f2g,@backtrack_f2,x,0,1000);
[x0,b]=gradient_descent(@f2,@f2g,@backtrack_f2,x,0,1000);
[x0,b]=conjugate_grad(@f2,@f2g,x,@backtrack_f2,0.1,0.1,100000)

#Create x as follows for function 2
x(1:100) = 1;
x = x';

# Execute these commands to run methods for function 1
[x0,b]=newton(@f1,@f1g,@f1h,@backtrack,x,0,1000);
[x0,b]=quasi_newton(@quasi_f,@f1,@f1g,@backtrack,x,0,1000);
[x0,b]=gradient_descent(@f1,@f1g,@backtrack,x,0,1000);
[x0,b]=conjugate_grad(@f1,@f1g,x,@backtrack,0.1,0.1,100000)


#Results 
x0 contains values for final x
b contains value for final f(x)
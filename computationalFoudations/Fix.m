function [t,k]=Fix(x_0,eps) %Define a function for fixpoint method and output the value
f=@(x)4*x^3-3*x;%Define the function
k=1;%initial iteration
error=1;%initial error 
out=zeros(1,2);
while error >=eps%criteria for the loop
    t=f(x_0);%calculate the value
    error=abs(t-x_0);%calculate the error 
    x_0=t;%revalue the b to the next iteration
    k=k+1;%count the number of iteration
    
end      
end
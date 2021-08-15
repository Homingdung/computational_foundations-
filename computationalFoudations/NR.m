function [b]=NR(x_0,eps)%Define the Newton-Raphson Method function and output the value
f=@(x)4*x^3-4*x;%Define the function
df=@(x)12*x^2-4; %Define the derivative of the function 
h=@(x)x- f(x)/(df(x));%Define the Newton function
k=1;%initial iteration 
error=1;%initial the error
while error>=eps %criteria for the loop
      b=h(x_0); %calculate the value
      error=abs(b-x_0); %calculate the error 
      x_0=b; %revalue the b to the next iteration
      k=k+1; %count the number of iteration
end  
end

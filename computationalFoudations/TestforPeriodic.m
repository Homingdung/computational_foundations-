function F=TestforPeriodic(x_01,x_02,eps) %function is used to test the periodic cycle
f1=@(x)4*x^3-3*x;%define the function
error=1;%define the error
k=1;%count the number of iteration
x_store_1=zeros(1,100);%the empty matrix is used to store the value
x_store_2=zeros(1,100);
while error>eps
      b=f1(x_01);%calculate the value
      error=abs(b-x_01);%calculate the error
      x_01=b;%revalue the initial input
      x_store_1(1,k)=b;% store the value
      k=k+1;%count the iterations
      if k>100 %test if it is a periodic cycle
          initial_value1=x_store_1(1,1);%this is the inital value
          fprintf("If the initial point is %f, there will be a periodic cycle at the very beginning\n",initial_value1);%print out the result
          break%periodic cycle and break to jump out the loop
      end
end


error=1;%redefine the erro
k=1;%define the k
while error>eps
      c=f1(x_02);%calculate the value
      error=abs(c-x_02);%calculate the error
      x_02=c;%revalue the initial input
      x_store_2(1,k)=c;% store the value
      k=k+1;%count the iterations
      if k>100 %test if it is a periodic cycle
          initial_value2=x_store_2(1,1);%this is the inital value
          fprintf("If the initial point is %f, there will be a periodic cycle at the very beginning\n",initial_value2);%print out the result
          break%periodic cycle and break to jump out the loop
      end
end

%plot the periodic cycle
figure
x=linspace(1,100,100);%define the number
subplot(2,1,1)% plot the graph as two windows
plot(x,x_store_1);
title("initial point -0.707")% add the title
subplot(2,1,2)
plot(x,x_store_2);
title("initial point 0.707")%add the title
end



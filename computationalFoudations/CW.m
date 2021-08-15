%%Problem 1
% a) The possible fixpoints are -1,0,1
x_0=-2;%initial point x_0
x_1=2;%initial point x_end
h=0.001;%Define the step size h
x_axis=linspace(x_0,x_1,500);%Define the x_axis
x(1)=x_0;%initial value x_1
y=[];%create a empty matrix for storage later
eps=0.00001;%define the eps as 0.00001
for i=2:length(x_axis)
    x(i)=x_axis(i);%record the x series
    y(i)=Fix(x(i),eps);%input the value into the fixpoint function and store the value
    
end
output=unique(round(y));%extract the value out
output(isnan(output(1,:))==1)=[];%cancel the nan value
output_deal=output;%final result in a matrix

for i=1:length(output_deal)
    v=output_deal(i);%print out the value
    fprintf("The solution is %d with precison %f \n",v,eps);%result
end







%%
% b)
x_0=-2;%initial the x_0
x_end=2;%intial the x_end
h=0.001;%Define the step size
x_axis=linspace(x_0,x_end,abs(x_0-x_end)/h+1);%Define the x-axis
x(1)=x_0;%initial the x_1
y=[];%create a empty matrix for storage later
eps=0.000001;%Define the eps as 0.00001
for i=1:length(x_axis)
    x(i)=x_axis(i);%record the x series
    y(i)=NR(x(i),eps);%%input the value into the fixpoint function and store the value
    
end
c=unique(round(y));%take out the value

for i=1:length(c)
    v=c(i);%print out the value
    fprintf("The solution is %d with initial interval (-2,2)\n",v);%result
end





%%
% c) Test for periodic cycle
x_01=-1/sqrt(2);%initial point as -1/sqrt(2)
x_02=1/sqrt(2);%initial point as 1/sqrt(2)
eps=0.00001;%initial eps
TestforPeriodic(x_01,x_02,eps);%used to test Function to test if it is a periodic cycle
fprintf("All in all, there is no rigorous perodic because matlab cannot figure out the true value of -1/sqrt(2)and 1/sqrt(2) \n")

%% Problem 2
% a)
F=@(x,y)y.^2-y.^3;%Define the function 
x_0=0;%initial x_0 to be 0
x_end=200;%initial x_end to be 200
y_0=0.01;%initial y_0
h=0.01;%Define the step size
x_axis=linspace(x_0,x_end,abs(x_0-x_end)/h+1);%Define the x-axis
x(1)=x_0;%initial the x_1
y(1)=y_0;%initial the y_1

for i=2:length(x_axis)
    x(i)=x_axis(i);%record the x series
    k1=F(x(i-1),y(i-1));%calculate the k1
    k2=F(x(i-1)+(1/2).*h,y(i-1)+(1/2).*k1.*h);%calculate the k2
    k3=F(x(i-1)+(1/2).*h,y(i-1)+(1/2).*k2.*h);%calculate the k3
    k4=F(x(i-1)+h,y(i-1)+k3.*h);%calculate the k4
    y(i)=y(i-1)+(1/6).*(k1+2.*k2+2.*k3+k4).*h;%calculate the y
end

fprintf("Using the RK4, y(%d) is approximately %f,given the step size to be %f\n",x_end,y(end),h);%print the result
figure
plot(x,y,"Linewidth",1) %plot the result
xlabel("x");%label the x-axis
ylabel("y");%label the y-axis
title("RK Method solving ODE");%add the title
    
   
    



%%
%c)

y1=Trees(5,0.2);%create the input
M=y1(2,:);%initializiation
B=y1(3,:);%initializiation
R=y1(4,:);%initializiation
z=[];%create the empty matrix
i=1;%initializiation
k=[];%create the empty matrix
while R(i)<0 %judge the revenue 
    z(i)=R(i); %put into the matrix
    k(i)=i;%revalue the k
    i=i+1;%count the number
    
end
k;
error=1;%define the error
c=1;%count the year
for i=2:11
    while error>0.0001
          b=R(i)-R(i-1); %the difference between the revenue 
          error=b;%revalue the error in this loop
          i=i+1;%count the iterations

    end
c=c+1;
end

%open the plot figure
figure
x=0:10;%create a series
subplot(2,1,1)%plot the figrue
plot(x,M,'b',x,B,'k','Linewidth',2);%set the plot parameters
title('Number of the trees ');%add the title
xlabel('year');%label the x-axis
ylabel('Number of trees');%label the y-axis
legend('Middle size trees','Big size trees','Northeast');%add the legend
grid on % open the grid

subplot(2,1,2)%plot the figrue
plot(x,R,'r','Linewidth',2);%set the plot parameters
title('Revenue');%add the title
xlabel('year');%label the x-axis
ylabel('Revenue');%label the y-axis
legend('Revenue','Northeast');%add the legend
grid on% open the grid

%print out the whole answer of this question 
y2=Trees(6,0.1);
R2=y2(4,:);
t=max(R2)-max(R);%
Answer_1=['the ',num2str(c),'year will achieve max net income',num2str(max(R)),'$']%print out the answer
Answer_2=['after ',num2str(max(k)),'year,the first positive outcome appear,and the invest before that is',num2str(-1*z),' $ each year']%print out the answer
fprintf('if change seeds of 6$ and lose of seed become to 10%%,the max income will grow %f\n',t)%print out the answer










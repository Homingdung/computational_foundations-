%% Linear Mathematics starts
%% Problem 1 (a)
addpath drawAxes
addpath drawVector
a=[4;2];%define a
b=[-2;1];%define b
drawVector(a)%use the external functionn to draw vector a
hold on%keep drawing in the same figure
drawVector(b)%use the external function to draw vector b
hold off%finished

%% Problem 1 (b) A_1
X_1=tril(ones(4));% define a 4x4 lower triangular matrix
X_2=eye(4,4);% define a 4x4 identity matrix
A_1=2*X_1-2*X_2% using the elementary matrix operation to get A_1

%% Problem 1 (b) A_2
N_0=[4,4,4,4];%define the array for the diagonal upwards
N_1=[3,3,3];%define the array for the diagonal 1st upwars
N_2=[2,2];%define the array for the diagonal 2nd upwards
N_3=[1];% define the array for the diagonal 3rd upwards
Y_0=diag(N_0,0);%using the function to put the array into corresponding position
Y_1=diag(N_1,1);% put them in corresponding diagnal positions
Y_2=diag(N_2,2);% put them in corresponding diagnal positions
Y_3=diag(N_3,3);% put them in corresponding diagnal positions
A_2=Y_0+Y_1+Y_2+Y_3% add them together to get A_2

%% Problem 1 (b) A_3
M_1=[1,3,5];%define the array for the diagonal 1st upwards
M_2=[2,4,6];%define the array for the diagonal 1st downwards
Z_1=diag(M_1,1);%put them into corresponding diagnal positions
Z_2=diag(M_2,-1);% put them into corresponding diagnal positions
A_3=Z_1+Z_2% add them together to get A_3

%% Problem 1 (c) B_1
for i=1:4
    B_1(1,i)=i;%the first row 
    B_1(2,i)=2.*i;%the second row
    B_1(3,i)=3.*i;%the third row
    B_1(4,i)=4.*i;%the fourth row
end
B_1

%% Problem 1 (c) B_2
for i=1:4
    B_2(i,i)=(i.*(i+1).*(2.*i+1))./6;%by deducing the diagonal mathematically we could get the formula
end
B_2

%% Problem 2 (a)
A=[2,-4,1;-2,1,2;1,-3,-7];% rewrite the left had side as matrix
B=[9;10;-2];% rewrite the right hand side as matrix
X=linsolve(A,B)% using the external function directly

%% Problem 2 (b)
A=[2,-4,1;-2,1,2;1,-3,-7];% rewrite the left hand side as matrix
B=[9;10;-2];% rewrite the right hand side as matrix
X_inverse=inv(A)% to get the inverse matrix of A
X=X_inverse*B% by using the poperty of matrix




% Linear Mathematics finished 
%% Calculus starts
%% Problem 1 (a)
figure('Color','[1 1 1]')% set the background of two figures
subplot(2,1,1)% in order to plot them separately with 2 rows and 1 column and the order of this figure is 1
X=linspace(-2*pi,2*pi,1000);%define the range of x and the amount of point
Y_1=sin(X);%function Y_1
plot(X,Y_1,'k:','LineWidth',2)% black dash dotted line with width of 2
xticks([-2*pi,-1*pi,0,pi,2*pi])% specify the tick value in terms of ¦Ð
xticklabels({'-2\pi','-\pi','0','\pi','2\pi'})% specify the tick value in terms of ¦Ð
title('Y_1=sin(X)');%add the title
xlabel('x-axis');%add the x-axis
ylabel('y-axis');%add the y-axis
grid on%open the grid

subplot(2,1,2)%the order of subfigure is 2 
Y_2=cos(X);%function Y_2
plot(X,Y_2,'b-.','LineWidth',2)% blue dash_dotted line with width of 2
xticks([-2*pi,-1*pi,0,pi,2*pi])% specify the tick value in terms of ¦Ð
xticklabels({'-2\pi','-\pi','0','\pi','2\pi'})% specify the tick value in terms of ¦Ð
title('Y_2=cos(X)');%add the title
xlabel('x-axis');%add the x-axis
ylabel('y-axis');%add the y-axis
grid on%open the grid

%% Problem 1 (b)
figure('Color','[1 1 1]')% set the background color to white
x=-3:0.1:3;%define the range of x
y=-3:0.1:3;%define the range of y
[x_axis,y_axis]=meshgrid(x,y);% underlying variables on the grid
z=x_axis.*exp(-x_axis.^2-y_axis.^2);%the figure of 3D 
surfc(x_axis,y_axis,z)%draw the 3D figure with contour underneath
colormap cool%specify the color of this figure
title('Figure f(x,y)=x*exp(-x^2-y^2)');%add the title
xlabel('x-axis');%add the x-axis
ylabel('y-axis');%add the y-axis
zlabel('z-axis');%add the z-axis


%% Problem 1 (c)
addpath drawAxes%add the path
addpath drawVector%add the path
figure(1);clf;%clear the window
figure('Color','[1 1 1]')% set the background color to white
A = [ -2   1
       0  -2
       1   3 ];%define the vector a and b together
drawVector(A,{'a','b'},'AxesLabels',{'x-axis','y-axis','z-axis'});%draw a and b and add the axis
title('Vector a and b in 3D')%add the title

%% Problem 2 (a)
figure('Color','[1 1 1]')% set the background color to white
load("CSI300.mat");%load the data from CSI300
load("SSE.mat");%load the data from SSE
load("SZSE.mat");%load the data from SZSE

stock_date=datetime(CSI300(:,1),'ConvertFrom','yyyymmdd');%value the date and set the format of date 4-digital years'yyyy'
stock_return1=CSI300(:,3);%value the stock return for CSI300
stock_return2=SSE(:,3);%value the stock return for SSE
stock_return3=SZSE(:,3);%valuet the stock return for SZSE

subplot(3,1,1)%plot the figure separately with 3 rows and 1 column and the order of this figure is 1
plot(stock_date,stock_return1,'r--');%plot the figure with red dashed line
title('Stock return of CSI300','fontsize',12)%add the titile with fontsize 12
xlabel('stock date')%add the x-axis
ylabel('stock return')%add the y-axis
datetick('x',10)%add the tick of x
subplot(3,1,2)%the order of this figure is 2
plot(stock_date,stock_return2,'b-.');%plot the figure with blue dash-dot line
title('Stock return of SSE','fontsize',12)%add the title with fontsize 12
xlabel('stock date')%add the x-axis
ylabel('stock return')%add the y-axis
datetick('x',10)%add the tick of x
subplot(3,1,3)%the order of this figure is 3
plot(stock_date,stock_return3,'k-');%plot the figure with black solid line
title('Stock return of SZSE','fontsize',12)%add the title with fontsize 12
xlabel('stock date')%add the x-axis
ylabel('stock return')%add the y-axis
datetick('x',10)%add the tick of x

%% Problem 2 (b)
figure('Color','[1 1 1]')% set the background color to white
load("CSI300.mat");%load the data from CSI300
stock_date=datetime(CSI300(:,1),'ConvertFrom','yyyymmdd');%value the date and set the format of date as 'yyyymm'
stock_return=CSI300(:,3);%value the stock return of CSI300
stock_returnvo=CSI300(:,2);%value the stock return volatility

yyaxis left;%%set the left y-axis
plot(stock_date,stock_return,'b-');%plot the figure with blue solid line
ylim([0,1.5]);%set the limit range of y
title('Stock return and Stock retrun volatility')%add the title
xlabel('Stock date');%add the co-x-axis
ylabel('Stock return');%add the y-axis


yyaxis right;%set the right y-axis
plot(stock_date,stock_returnvo,'r-');%plot the figure with red solid line
ylim([-1,1]);%set the limit range of y
set(gca,'ycolor','k')%set the color of the right axis
ylabel('Stock return volatility');%add the y-axis

set(gca,'FontSize',24)%The font size of the figure needs to be 24
datetick('x','yyyy-mm')%set the digitals
legend('Stock return','Stock return volatility','Location','Northwest','Fontsize',24)%locate the lengend on the northwest area

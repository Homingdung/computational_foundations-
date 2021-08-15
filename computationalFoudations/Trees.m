function [y]=Trees(p,l) %input the price and the lose percentage
x=linspace(0,10,11); %initialize the ten years 
S(1)=5000; %initialize the seedlings
M(1)=0; %initialize the mid-size trees
B(1)=0; %initialize the big trees
S(2)=7000; %buy 7000 seedlings every year

S_Cost(1)=-p*5000;
S_Cost(2)=-p*7000;
S_Cost=-p*7000;
R(1)=-p*5000;

for i=2:length(x)
    S(i)=7000;% the seedlings every year
    M(i)=S(i-1)*(1-l)+M(i-1)*0.2; %the number of mid-size trees every year
    B(i)=0.5*M(i-1); %%the number of big trees every year
    M(1)=0; %the number of mid-size trees in the initial year is 0 
    R(i)=-7000*p+0.2*M(i-1)*30+0.5*B(i-1)*50+0.3*B(i-1)*30+0.2*B(i-1)*1;
    
    
end
y=[S;M;B;R];%output
end

clear all
close all
clc
 
k(1)=0.95;
b(1)=0.2;

f1=0.0;%Krill
f2=0.0;%Whale

v=0.33;

r1=0.1;
r2=0.001;

ni=1;

for n=2:1000
    k(n)=k(n-1)+(r1)*k(n-1)*(1-k(n-1))-(v*b(n-1)*k(n-1))-(f1*r2*k(n-1));
    b(n)=b(n-1)+r2*b(n-1)*(1-b(n-1)/k(n-1))-f2*r2*b(n-1);
end
 


plot(k)
hold on
plot(b)
 title(['Populations: With Fishing.'])
 legend('Krill','Whales')
    xlabel('Iterations');
    ylabel('Population, proportionate [0,1]');
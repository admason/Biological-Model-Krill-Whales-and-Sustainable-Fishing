clear all
close all
clc

k(1)=1;
b(1)=1;

r1=0.1;
r2=0.001;
v=0.1;
ni=1

for n=2:1000
    k(n)=k(n-1)+r1*k(n-1)*(1-k(n-1))-v*b(n-1)*k(n-1);
    b(n)=b(n-1)+r2*b(n-1)*(1-(b(n-1))/(k(n-1)));
end
plot(k)
title('Exercise 10.2.3 Krill model')
xlabel('Time')
ylabel('Population')
hold on
plot(b)

# Biological-Model-Krill-Whales-and-Sustainable-Fishing
Analysis for Krill and Whale populations to aid decisions for sustainable fishing.

Exercise 10.1.1
Only Krill.
Matlab code:
clear all
close all
clc
 
%10.1.1 Krill%
%%%  Simulation of the temporal evolution of the Krill population.



For n=1.

k(1)=0.1;
r(1)=0.1;
ni=1;
 
%n=1%
for n=2:1
    k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));
end
 











For n=2.

%n=2%
for n=2:2
    k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));
end
 

 



For n=3.

%n=3%
for n=2:3
    k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));
end

 






For n=5000.

k(1)=0.1;
r(1)=0.1;
ni=1;
for n=2:5000
    k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));
end
 
Which show that when Krill has no predator it’s population rapidly grows to its maximum capacity.
The value of k(n) approaches for a large value of n is 1. This is the equilibrium point of the population.
The equilibrium point denotes the carrying capacity of the habitation of the Krill, that is the size of the population of Krill which their environment can support.
Since k(n)=q(n)/Q and k(n) ϵ [0.1,1], then k(n) is a fraction denoting the existing Krill with respect to the carrying capacity of the Krill population.
If q(n) is the quantity of existing Krill 	which has easily reached the maximum level without the presence of predators, then q(n)=Q.





Where k(n) = q(n)/Q = Q/Q = 1
Substituting the k(n) = 1 into the recurrence equation:
k_{n+1}\ =k_n+r_1\ast k_n\left(1-k_n\right) 
	=\frac{Q}{Q}+r_1\ast\frac{Q}{Q}(1-\frac{Q}{Q})
 	 =1+r_1\ast1(1-1)
	= 1 +0
	= 1

The r1 coefficient is the ‘intrinsic growth rate’ which is the rate of population increase if there is no density dependent regulation of the population.
Altering the iteration from 5000 to 100 gives a clearer plot:
%n=100%
for n=2:100
    k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));
end



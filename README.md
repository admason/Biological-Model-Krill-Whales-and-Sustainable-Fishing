# Biological-Model-Krill-Whales-and-Sustainable-Fishing
Analysis for Krill and Whale populations to aid decisions for sustainable fishing.

The model will account for the whale population in a particular sea and for the abundance of krill, their favourite food.
Letting Q be the maximum quantity of krill that can live in a particular sea.
Then k(n) = q(n)/Q is the fraction of existing krill with respect to the maximum quantity sustainable from the environment.
We have k(n) in[0,1].
The quantity k(n) satisfies the recurrence relation:
k(n+1) = k(n) + r(1)*k(n)*(1-k(n))
Where r(1) is a given constant.

Code 1:
Simulates the temporal eveolution of the krill population.
By using different initial conditions k(1) in[0.1,1].
Computing, k(n+1) = k(n) + r(1)*k(n)*(1-k(n)) with n=1,2,3...5000 
By use of the code: 
k(1)=0.1;
r(1)=0.1;
ni=1;
for n=2:5000
	k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));
end

# Biological-Model-Krill-Whales-and-Sustainable-Fishing
Analysis for Krill and Whale populations to aid decisions for sustainable fishing.

The model will account for the whale population in a particular sea and for the abundance of krill, their favourite food.

Just Krill: Control equation
Letting Q be the maximum quantity of krill that can live in a particular sea.
Then k(n) = q(n)/Q is the fraction of existing krill with respect to the maximum quantity sustainable from the environment.
We have k(n) in[0,1].
The quantity k(n) satisfies the recurrence relation:
k(n+1) = k(n) + r(1)*k(n)*(1-k(n))
Where r(1) is a given constant.

Code 1: Just Krill.
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

Krill and Whales.
Introducing the Whale population to the model.4
Let b(n) be the fraction of the whale population with respect to the maximum quantity sustainable from the environment.
The whale population uses the equation:
b(n+1) = b(n) +r(2)*b(n)(1 - (b(n)/k(n)))
Relevant adjustments are made to the krill equation to account for predation by the whales.
Assuming that whales eat krill at a rate of v.
The krill population now reads:
k(n+1) = k(n) +r(1)*k(n)*(1-k(n))-v*b(n)*k(n)
Such that the krill are to be consumed proportionally to the current whale population.

Code 2: Krill and Whale
This code simulates the temporal evolution of the krill and whales by using different values for v.
The user may vary the krill consumption rate by altering the variable v:





















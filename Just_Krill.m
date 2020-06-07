%n=1

k(1)=0.1;

r(1)=0.1;

ni=1;

for n=2:10

	k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));

end

subplot(221), plot(k)

title(['Krill population, n=10  '])

    xlabel('Iterations');

    ylabel('Population as proportion [0,1]');

    xlim([0 10])

    ylim([0 1.1])

hold on





%n=2%

for n=2:50

    k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));

end

subplot(222),plot(k)

title(['Krill population, n=50 '])

    xlabel('Iterations');

    ylabel('Population as proportion [0,1]');

    xlim([0 50])

    ylim([0 1.1])

hold on





k(1)=0.1;

r(1)=0.1;

ni=1;

for n=2:75

    k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));

end

subplot(223),plot(k)

title(['Krill population, n=75'])

    xlabel('Iterations');

    ylabel('Population as proportion [0,1]');

    xlim([0 100])

    ylim([0 1.1])

hold on



%n=100%

for n=2:100

    k(n)=k(n-1)+r(1)*k(n-1)*(1-k(n-1));

end

subplot(224),plot(k)

title(['Krill population, n=100 '])

    xlabel('Iterations');

    ylabel('Population as proportion [0,1]');

    xlim([0 100])

    ylim([0 1.1])

hold on





n=10;
x=zeros(1,n);
y=zeros(1,n);

for k=1:n-1
    x(k+1)=y(k)*(1+sin(0.7*x(k)))-1.2*sqrt(abs(x(k)));
    y(k+1)=0.21-x(k);
end

scatter(x,y)
title({['Fractal Picture'];['k = ' num2str(n)]})
xlabel('x_k')
ylabel('y_k')
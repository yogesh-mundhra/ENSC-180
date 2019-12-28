%program that solves det([A]-alpha*[I]
a=0:0.0001:10;
detpoly=-a.^3+20*a.^2-116*a+154;
for i=1:length(a)-1
    if detpoly(i)*detpoly(i+1)<0
        fprintf('%d \n', a(i));
    end
end
plot(a, detpoly);
title('Solution to det([A]-alpha*[I])');
xlabel('alpha');
ylabel('y');

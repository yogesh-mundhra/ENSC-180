syms x y
T=@(x,y) 80*y.^2.*exp(-x.^2-0.3*y.^2);
interval=[-2.2 2.2 -6 6];
subplot(3,1,1);
fsurf(T,interval)
title('Temperature distribution over a rectangular plate')
subplot(3,1,2);
fcontour(T, interval)
subplot(3,1,3);
x=linspace(-2.2,2.2,13);
y=linspace(-2.2,2.2,13);
[X,Y]=meshgrid(x,y);
Z=T(X,Y);
contour3(X,Y,Z)
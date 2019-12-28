x=805:20:985;
y=[0.710 0.763 0.907 1.336 2.169 1.598 0.916 0.672 0.615 0.606];
yy=spline(x,y,x);
p=polyval(polyfit(x,y,9),x);
plot(x,y,'o',x,yy,'y')
hold on
plot(x,p,'b--')
legend('Dataset','Spline fit','Polynomial fit')
title('Curve fitting for a given dataset')
residual_square_spline=sum((y-yy).^2)
residual_square_poly=sum((y-p).^2)
% The square spline fits the curve from the dataset perfectly
% The polynomial comes close however, with 5.0978e-05
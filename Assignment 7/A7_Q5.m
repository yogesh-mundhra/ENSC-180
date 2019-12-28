X=[0,0.005,0.0075,0.0125,0.025,0.05,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];
Yu=[0,0.0102,0.0134,0.017,0.025,0.0376,0.0563,0.0812,0.0962,0.1035,0.1033,0.095,0.0802,0.0597,0.034,0];
Yl=[0,-0.0052,-0.0064,-0.0063,-0.0064,-0.006,-0.0045,-0.0016,0.001,0.0036,0.007,0.0121,0.017,0.0199,0.0178,0];
%cubic spline
cubic_yu=interp1(X,Yu,X,'spline');
cubic_yl=interp1(X,Yl,X,'spline');
plot(X,cubic_yu, X, cubic_yl)
title('Air foil using cubic spline')
%global
figure
yu_4=polyval(polyfit(X,Yu,4),X);
yl_4=polyval(polyfit(X,Yl,4),X);
yu_8=polyval(polyfit(X,Yu,8),X);
yl_8=polyval(polyfit(X,Yl,8),X);
yu_12=polyval(polyfit(X,Yu,12),X);
yl_12=polyval(polyfit(X,Yl,12),X);
yu_15=polyval(polyfit(X,Yu,15),X);
yl_15=polyval(polyfit(X,Yl,15),X);
plot(X,yu_4,X,yl_4)
title('Air foil using polynomials of different degrees')
hold on
plot(X,yu_8,X,yl_8)
plot(X,yu_12,X,yl_12)
plot(X,yu_15,X,yl_15)
legend('4^t^h deg','8^t^h deg','12^t^h deg','15^t^h deg')
residual_yu4=sum((Yu-yu_4).^2)
residual_yl4=sum((Yl-yl_4).^2)
residual_yu8=sum((Yu-yu_8).^2)
residual_yl8=sum((Yl-yl_8).^2)
residual_yu12=sum((Yu-yu_12).^2)
residual_yl12=sum((Yl-yl_12).^2)
residual_yu15=sum((Yu-yu_15).^2)
residual_yl15=sum((Yl-yl_15).^2)
%the 15th degree polynomial approximates the air foil best from the results
%of the least square analysis
syms x
y=(2*x.^4-x.^2+x+1)./(x.^2-2);
[numy,deny]=numden(y);
dy=diff(y,x);
[numdy,dendy]=numden(dy);
d2y=diff(dy,x);
[numd2y,dend2y]=numden(d2y);

assume(x,'real')
asympy=vpa(solve(deny==0,x,'MaxDegree', 4),6);
asympdy=vpa(solve(dendy==0,x,'MaxDegree', 4),6);
asympd2y=vpa(solve(dend2y==0,x,'MaxDegree',4),6);

extremay=vpa(solve(simplify(dy)==0,x,'MaxDegree',4),6);
extremady=vpa(solve(simplify(d2y)==0,x,'MaxDegree',4),6);
extremad2y=vpa(solve(simplify(diff(d2y,x))==0,x,'MaxDegree',4),6);

inflexy=vpa(solve(y==0,x,'MaxDegree',4),6);
inflexdy=vpa(solve(simplify(dy)==0,x,'MaxDegree',4),6);
inflexd2y=vpa(solve(simplify(d2y)==0,x,'MaxDegree',4),6);

fplot(y)
ylim([-200,200]);
xlim([-3,3]);
hold on
fplot(diff(y))
fplot(diff(y,2))
%asymptotes are black crosses
plot(asympy,0,'xk');
plot(asympdy,0,'xk');
plot(asympd2y,0,'xk');
%points of inflexion are green circles
plot(inflexy,subs(y,inflexy),'og');
plot(inflexdy,subs(dy,inflexdy),'og');
plot(inflexd2y,subs(d2y,inflexd2y),'og');
%minima are blue circles
plot(min(extremay),subs(y,min(extremay)),'ob');
plot(min(extremady),subs(dy,min(extremady)),'ob');
plot(min(extremad2y),subs(d2y,min(extremad2y)),'ob');
%maxima are red circles
plot(max(extremay),subs(y,max(extremay)),'or');
plot(max(extremady),subs(dy,max(extremady)),'or');
plot(max(extremad2y),subs(d2y,max(extremad2y)),'or');
legend('y', 'y''', 'y''''')
xlabel('x')
ylabel('y')
title({'POI, minima, maxima and vertical asymptotes','of a given function and its derivatives'})
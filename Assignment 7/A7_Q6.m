f1=@(t,y) [y(2); (10*sin(1*t)-75*y(1))/3];
f5=@(t,y) [y(2); (10*sin(5*t)-75*y(1))/3];
f10=@(t,y) [y(2); (10*sin(10*t)-75*y(1))/3];
[t1,y1]=ode45(f1,[0,20],[0;0]);
[t5,y5]=ode45(f5,[0,20],[0;0]);
[t10,y10]=ode45(f10,[0,20],[0;0]);

plot(t1,y1(:,1),t5,y5(:,1),t10,y10(:,1))
legend('\omega=1 rad s^-^1','\omega=5 rad s^-^1','\omega=10 rad s^-^1');
title({'Motion of a certain mass connected to a spring';'with varying frequency \omega'});
xlabel('Time (s)');
ylabel('y(t)');
%5 rad/s gives the largest amplitude of y(t)
%1 rad/s gives the smallest amplitude of y(t)
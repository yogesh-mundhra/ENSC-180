syms h(t) 
syms t positive                                                                                                                                                                                       ;
h(t)=-4.9*t.^2+125.*t+500;
v=diff(h);
a=diff(v);
sol=double(solve(h(t),t));
fprintf(' The time the rocket hits the ground is %.3f seconds\n',sol)
fplot(h,[0,33],'b')
ylim([-200,1350])
title('Acceleration, velocity and height of a rocket vs time')
xlabel('Time(s)')
hold on
fplot(v,[0,33],'r')
hold on
fplot(a,[0,31],'y')
legend('Height(s)', 'Velocity(ms^-^1)', 'Acceleration(ms^-^2)')
hold off
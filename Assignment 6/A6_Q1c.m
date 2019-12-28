syms h t
h=(-0.12)*t^4+12*t^3-380*t^2+4100*t+220;
v=diff(h);
a=diff(v);
funh=symfun(h,t);
funv=symfun(v,t);
polynomial=sym2poly(h);
r=roots(polynomial);
t_init=r(1);
maxt=double(vpasolve(v==0,t));
[maxh,I]=max(double((funh(maxt))));
maxt=maxt(I);
fprintf('The balloon reaches maximum height %.2f metres after %.2f hours.\n', maxh, maxt) 
fprintf('The balloon reaches the ground at %.2f hours\n', t_init)
fplot(h)
hold on
ylim([-1000,18000])
xlim([0,55])
xlabel('Time (h)')
grid on
fplot(v)
hold on
fplot(a)
hold on
legend('Altitude (m)', 'Velocity (mhr^-^1)', 'Acceleration (mhr^-^2)')
hold off
        
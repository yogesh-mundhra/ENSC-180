syms t
fprintf('The forced response for V_s=8V is:\n')
v1= dsolve('D2v + 5*Dv + 6*v=8', 'v(0)=10', 'Dv(0)=-2')
fprintf('The forced response for V_s=3e^-4t is:\n')
v2= dsolve('D2v + 5*Dv + 6*v=3*exp(-4*t)', 'v(0)=10', 'Dv(0)=-2')
v3=v1+v2;
fprintf('The natural response is:\n')
v4=dsolve('D2v + 5*Dv + 6*v=0', 'v(0)=10', 'Dv(0)=-2')
v5=v3+v4;
fplot(v4)
hold on
fplot(v3)
hold on
fplot(v5)
title('Natural Response vs time')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('Natural', 'Forced', 'Complete')
xlim([0 10])
ylim([0 10])
hold off
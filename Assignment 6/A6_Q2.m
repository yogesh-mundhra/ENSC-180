syms R L C t
v1=dsolve('D2v + (R/L)*Dv + v/(L*C) = 0', 'v(0)=10', 'Dv(0)=2');
v2=dsolve('D2v + (R/L)*Dv + v/(L*C) = 0', 'v(0)=10', 'Dv(0)=2');

R=2/3; L=1; C=1/2;
va=subs(v1)
R=3; L=1; C=1/2;
vb=subs(v2)
fplot(va, [0,10])
hold on
fplot(vb,[0,10])
title('Natural Response of a circuit')
xlabel('Time(s)')
ylabel('Voltage (V)')
legend('V_a', 'V_b')
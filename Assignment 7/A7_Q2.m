L=5;
I=8.4;
r=2/1000;
density=2.6989;
mp=660.37+273.15;
resistivity=0.0026548/100000;
T0=20+273.15;
V=pi*r^2*L;
A=pi*r^2;
C=0.215*4184;
m=V*density;
R=resistivity*L/A;

syms t

Power=I^2*R;
Energy(t)=int(Power,t);
dT=Energy(t)/(m*C);
T=T0+dT;

fplot(T,[0,120])
title('Temperature Profile for Aluminium Wire assuming no loss')
xlabel('Time (mins)')
ylabel('Temperature (K)')

meltTime=double(vpasolve(T==mp,t))
if meltTime<=120
    fprintf('The wire has reached its melting point under 2 hrs\n')
else
    fprintf('The wire will reach its melting point after: %.0f mins\n', meltTime)
end

clear I Power Energy dT T
syms I
Power=I^2*R;
Energy(t)=int(Power,t);
Energy(t)=subs(Energy(t),t,120);
dT=Energy(t)/(m*C);
T=T0+dT;

I_max=double(vpasolve(T==mp,I));
I_max=I_max(I_max>0);

fprintf('The maximum current that can flow through the wire in 2hrs is %f\n',I_max);
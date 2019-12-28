% EI=flexrig or the flexural rigidity of a bar/beam/rod
%Q=q0

syms flexrig Q t L

sol=dsolve('D2y=-Q*t/flexrig', 'y(L)=0', 'Dy(L)=0')
slope=diff(sol)
L=2.0;
esol=subs(sol)
eslo=subs(slope)
f=symfun(eslo + esol,t);
flexrig=1.0; Q=1.0;
ef=subs(f);
fplot(ef,[0 L])
title('Deflection of 2m beam versus distance from free end')
xlabel('x (m)')
ylabel('EIy/q_0 (m)')

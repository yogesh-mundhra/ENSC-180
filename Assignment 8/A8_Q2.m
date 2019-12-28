%Yogesh Mundhr
%301346798
%Group 4 - Zhendong
% Forward diode current vs Diode voltage at different temperatures.
k=1.38*10^-23;
q=1.6*10^-19;
n=1;
Is=10^-12;
Vd=0:0.0001:0.8;
T=[-75,25,75]+273;
Vt=k.*T./q;
Id=zeros(3,length(Vd));

for i=1:3
    Id(i,:)=Is*(exp(Vd/(n*Vt(i)))-1);
end
subplot(3,1,1)
plot(Vd,Id(1,:),'b')
title('\fontsize{13}I_D vs V_D for a diode')
legend('-75°C')
ylabel('I_D (A)')
xlabel('V_D (V)')

subplot(3,1,2)
plot(Vd,Id(2,:),'y')
legend('25°C')
ylabel('I_D (A)')
xlabel('V_D (V)')

subplot(3,1,3)
plot(Vd,Id(3,:),'r')
legend('75°C')
ylabel('I_D (A)')
xlabel('V_D (V)')

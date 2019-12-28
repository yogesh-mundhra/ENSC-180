%Yogesh Mundhra
%301346798
%Message signal with frequency fm = 0.02 Hz, modulated in different ways:
%carrier modulation, AM modulation, FM modulation
%fc>>fm and all amplitudes and kf=1
Ac=1;
Am=1;
kf=1;
fm=0.02; %Hz
fc=0.5;  %Hz
syms t
mt=Am*cos(2*pi*fm*t);
St=Ac*cos(2*pi*fc*t);
S_AM=Ac*(1+mt)*cos(2*pi*fc*t);
S_FM=Ac*cos((2*pi*fc*t)+(2*pi*kf*Am*int(mt,[0,t])));

subplot(4,1,1)
fplot(mt,[0,60])
title('Modulating/Message Signal \itm(t)')
ylabel('Amplitude')
xlabel('Time (s)')

subplot(4,1,2)
fplot(St,[0,60]);
title('Carrier signal \itS(t)')
ylabel('Amplitude')
xlabel('Time (s)')

subplot(4,1,3)
fplot(S_AM,[0,60]);
title('AM modulation \itS_A_M(t)')
ylabel('Amplitude')
xlabel('Time (s)')

subplot(4,1,4)
fplot(S_FM,[0,60]);
title('FM modulation \itS_F_M(t)')
ylabel('Amplitude')
xlabel('Time (s)')
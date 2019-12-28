%Yogesh Mundhra
%301346798
%Zhendong - Group 4
%ID versus V_DS for a MOSFET with varying VGS
Kn=100;
W_L=5;
VT=1
lambda=0.01;
VDS=0:0.1:5.0;
VGS=0:0.5:5;
ID=zeros(length(VGS),length(VDS));
for i=1:length(VGS)
    for j=1:length(VDS)
        if VGS(i)<VT
            ID(i,j)=0;
        elseif VGS(i)>VT
            if VDS(j) <= VGS(i)-VT
                ID(i,j)=0.5*Kn*W_L*(2.*(VGS(i)-VT).*VDS(j)-VDS(j).^2);
            elseif VDS(j)>VT
                ID(i,j)=0.5*Kn*W_L*((VGS(i)-VT).^2).*(1+(lambda.*VDS(j)));
            end
        end
    end
end
plot(VDS,ID)
title('I_D vs V_G_S for different gate to source voltages in a MOSFET')
legendSheet=cellstr(num2str(VGS', '%-.1fV'));
legend(legendSheet)
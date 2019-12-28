function [] =Q1_2()
h=0:0.01:3;
ratio = ((3.*h. ^2)-(h.^3))./4;
plot(ratio,h)
title('Height vs. Ratio')
xlabel('Ratio')
ylabel('Height')
end

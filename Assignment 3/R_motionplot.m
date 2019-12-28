%Plots two graphs separately of time vs height and speed vs height
%Yogesh Mundhra
%Group 4
%Assignment 3 ENSC 180
function R_motionplot(f,time)
height = length(time);
velocity = length(time);
[height,velocity] =f(time);
hold on
yyaxis left
plot(time, height, 'r')
xlabel('Time (s)');
ylabel('Height (m)');
yyaxis right
plot(time, velocity, 'b')
title('Rocket launch over time');
ylabel('Velocity (m/s)');
hold off
end


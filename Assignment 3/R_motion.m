%Calculates the height and velocity.
%Yogesh Mundhra
%Group 4
%Assignment 3 ENSC 180
function [height, velocity] = R_motion(time)
height = 2.13.*time.^2-0.0013.*time.^4+0.000034.*time.^4.751;
velocity = 2*2.13.*time - 4*0.0013.*time.^(3) + 4.751*0.000034.*time.^(3.751);
end

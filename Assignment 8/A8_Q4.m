%Yogesh Mundhra
%301346798
%Group 4
%BONUS QUESTION
% Motion of a 2-DOF system under general excitation
A=[0 1; -5 -2];
B=[0;1];
x0=[5 3];
C = [];
D = [];
sys = ss(A,[],C,D);

%a)
figure(1)
[y,t,x]=initial(sys,x0);
plot(t,x(:,1))
title('Initial Function: X1 with time');
xlabel('Time (s)');
ylabel('Position');

%b)
figure(2)
sys1 = ss(A,B,C,D);
[y1,t1,x1] = step(sys1);
plot(t1,x1);
legend('X1','X2');
title('Response to zero initial conditions');
xlabel('Time(s)');
ylabel('Position');

figure(3)
B = 10*[0;1];
sys2 = ss(A,B,C,D);
[y2,t2,x2] =step(sys2);
plot(t2,x2);
title('Step Function excitation with magnitude 10');
xlabel('Time (s)');
ylabel('Position');
legend('X1','X2')
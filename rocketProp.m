% Using ode45 MATLAB solver to find velocity of rocket with 
% different values of force
% Define constants
t = 0:10;
m = 1000;
c = 500;
vi = 0;
f = 20000:20000:80000;
% Use ode45 to solve differential equation

% Velocity for 20,000 N
[t,v20] = ode45(@(t,v20) (f(1)-c*v20)/m,t,vi);
% Velocity for 40,000 N
[t,v40] = ode45(@(t,v40) (f(2)-c*v40)/m,t,vi);
% Velocity for 60,000 N
[t,v60] = ode45(@(t,v60) (f(3)-c*v60)/m,t,vi);
% Velocity for 80,000 N
[t,v80] = ode45(@(t,v80) (f(4)-c*v80)/m,t,vi);

% Plotting the velocity over first 10 seconds
plot(t,v20,LineWidth=1)
hold on
plot(t,v40,LineWidth=1);
hold on
plot(t,v60,LineWidth=1);
hold on
plot(t,v80,LineWidth=1);
hold on
title("Velocity of Rocket with Different Forces")
xlabel("Time (s)")
ylabel("Velocity (m/s)")
grid on
f = ["20K N","40K N","60K N","80K N"];
legend(f,'Location','Best')

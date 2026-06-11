%% PID Controlled Ball Screw System

clear;
clc;

s = tf('s');

J = 0.01;
B = 0.1;
K = 0.01;

Plant = K/(J*s^2 + B*s);

Kp = 50;
Ki = 20;
Kd = 1;

Controller = pid(Kp,Ki,Kd);

ClosedLoop = feedback(Controller*Plant,1);

figure;
step(ClosedLoop);
title('Closed Loop Response');

grid on;

info = stepinfo(ClosedLoop)

disp('Performance Metrics');
disp(info);
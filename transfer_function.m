%% Transfer Function Model

clear;
clc;

s = tf('s');

J = 0.01;
B = 0.1;
K = 0.01;

Plant = K/(J*s^2 + B*s);

disp('Plant Transfer Function');
Plant

figure;
step(Plant);
title('Open Loop Step Response');
grid on;
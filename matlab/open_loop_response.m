% open_loop_response.m
clear;
clc;

load realistic_parameters.mat

s = tf('s');

MotorTF = Kt / ((L*s + R)*(J*s + B) + Ke*Kt);
PositionTF = MotorTF*(1/s);
BallScrewTF = Lead/(2*pi);

Plant = BallScrewTF*PositionTF;

figure;
step(Plant);
grid on;
title('Open Loop Position Response');

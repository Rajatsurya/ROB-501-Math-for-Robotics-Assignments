% Clear previous data
clear all;
close all;
clc;

C = [1,2;];

y = [1.5377];

Q = [1.00];

P = [0.5, 0.25;
    0.25 ,0.5;];

E = P - P*C'*inv(C*P*C' + Q)*C*P;

disp("The co-varience matrix E is :")
disp(E);

K_cap = P*C'*inv(C*P*C'+Q);
disp ("K_cap is :")
disp(K_cap);

x_cap = K_cap *y;
disp("The Minimum Variance Estimate for x is:");
disp(x_cap);




% Clear previous data
clear all;
close all;
clc;

C = [1,2;
    3,4;
    5,0;
    0,6;];

y = [1.5377;
    3.6948;
    -7.7193;
    7.3621;];

Q = [1.00, 0.00, 0.00, 0.00;
    0.00, 1.00, 0.00, 0.00;
    0.00, 0.00, 1.00, 0.00;
    0.00, 0.00, 0.00, 1.00;];

I = [1,0;
    0,1;];

P = 100*I;

E = P - P*C'*inv(C*P*C' + Q)*C*P;

disp("The co-varience matrix E is :")
disp(E);


K_cap = P*C'*inv(C*P*C'+Q);
disp ("K_cap is :")
disp(K_cap);

x_cap = K_cap *y;
disp("The Minimum Variance Estimate for x is:");
disp(x_cap);





% Clear previous data
clear all;
close all;
clc;

x_bar = [1;
    -1;];

e_bar = 0;

C = [1,2;
    3,4;
    5,0;
    0,6;];

y = [1.5377
    3.6948;
    -7.7193;
    7.3621;];

y_bar = C*x_bar+e_bar;

Q = [1.00, 0.50, 0.50, 0.25;
    0.50, 2.00, 0.25, 1.00;
    0.50, 0.25, 2.00, 1.00;
    0.25, 1.00, 1.00, 4.00];

P = [0.5, 0.25;
    0.25 ,0.5;];

E = P - P*C'*inv(C*P*C' + Q)*C*P;

disp("The co-varience matrix E is :")
disp(E);

x_cap = x_bar+ P*C'*inv(C*P*C'+Q) *(y-y_bar);
disp("The Minimum Variance Estimate for x is:");
disp(x_cap);




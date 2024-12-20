% Clear previous data
clear all;
close all;
clc;

C = [1,2;
    3,4;];

y = [1.5377;
    3.6948;];

Q = [1.00, 0.50;
    0.50, 2.00;];

E = inv (C'* inv(Q) * C);
disp("The co-varience matrix E is : ");
disp(E);

K_cap = inv (C'* inv(Q) * C ) * C'*inv(Q);
disp("K_cap is :")
disp(K_cap);

x_cap = K_cap * y;
disp ('The Best Linear Unbiased Estimate (BLUE) for x is: ');
disp (x_cap);



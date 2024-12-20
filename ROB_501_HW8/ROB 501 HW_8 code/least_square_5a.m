% Clear previous data
clear all;
close all;
clc;

A = [1,2;
    3,4;
    5,0;
    0,6;];

y = [1.5377;
    3.6948;
    -7.7193;
    7.3621;];

x_cap = inv(A'*A)* A'*y;
disp (x_cap);

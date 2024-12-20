clear; clc;
load HW05_Prob5_Data;

x = t;  % Ensure t is loaded from the data
Y = f;  % Ensure f is loaded from the data

% Correct the matrix A with proper power terms and without syntax errors
A = [x.^0.39 x.^2 x.^0.24 exp(-1*x)];

% Compute the determinant of (A' * A)
det(A' * A);

% Compute the alpha_hat coefficients
alpha_hat = inv(A' * A) * A' * Y;

% Plot the data and the fit
plot(x, Y, 'o', x, alpha_hat(1) * x.^0.39 + alpha_hat(2) * x.^2 + alpha_hat(3) * x.^0.24 + alpha_hat(4) * exp(-1*x));

% Label the plot
gtext(['y = c_1*x']);
xlabel('x');
ylabel('y');

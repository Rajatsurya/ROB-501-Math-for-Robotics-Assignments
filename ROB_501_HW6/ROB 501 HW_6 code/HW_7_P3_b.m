% Load the new data set
load('DataHW06_Prob3.mat');  % Assuming this contains t, y, and dy

% Initialize variables
L = length(t);  % Number of data points
M = 5;  % Window size for regression

% 1. Naive Estimate of the Derivative
naive_derivative = zeros(size(y));
dt = t(2) - t(1);  % Time step

for k = 2:L
    naive_derivative(k) = (y(k) - y(k-1)) / dt;
end

% 2. Regression Model Estimate of the Derivative
regression_derivative = zeros(size(y));

for k = M:L
    % Moving window of time and y values
    window_time = t(k-M+1:k);
    window_y = y(k-M+1:k);
    
    % Perform polynomial regression (degree 1)
    p = polyfit(window_time, window_y, 1);
    
    % The slope (first coefficient) is the derivative estimate
    regression_derivative(k) = p(1);
end

% 3. Compute RMSE for the Naive Estimate
rmse_naive = sqrt(sum((naive_derivative - dy).^2) / L);

% 4. Compute RMSE for the Regression Model
rmse_regression = sqrt(sum((regression_derivative - dy).^2) / L);

% Display the RMSE values
fprintf('RMSE for Naive Estimate: %.4f\n', rmse_naive);
fprintf('RMSE for Regression Model: %.4f\n', rmse_regression);

% Plotting for comparison
figure;
plot(t, naive_derivative, 'b', 'DisplayName', 'Naive Derivative');
hold on;
plot(t, regression_derivative, 'g', 'DisplayName', 'Regression Derivative');
plot(t, dy, 'r--', 'DisplayName', 'True Derivative');
xlabel('Time t');
ylabel('Derivative');
legend;
title('Comparison of Naive, Regression, and True Derivatives');
grid on;
hold off;

% Load the data
load('DataHW06_Prob2.mat');

% Set the window size (number of points in the moving window)
M = 5;  % Example window size

% Create an array to store the derivative estimates
estimated_derivative = zeros(size(y));

% Loop over the data starting from the M-th point (since we need M points to start)
for k = M:length(t)
    % Get the recent M points from the time and y arrays
    window_time = t(k-M+1:k);  % Time values in the window
    window_y = y(k-M+1:k);     % y values in the window
    
    % Perform regression using a polynomial fit (degree 1 for a straight line)
    % polyfit returns the coefficients of the best-fitting polynomial
    p = polyfit(window_time, window_y, 1);
    
    % The first coefficient of p is the slope (the derivative estimate at time t_k)
    estimated_derivative(k) = p(1);
end

% Plot the estimated derivative versus time
figure;
plot(t, estimated_derivative, 'b', 'DisplayName', 'Estimated Derivative');
hold on;

% Plot the true derivative (dy) for comparison
plot(t, dy, 'r--', 'DisplayName', 'True Derivative');

% Add labels and a legend
xlabel('Time t');
ylabel('Derivative');
title('Estimated Derivative vs True Derivative');
legend show;
grid on;
hold off;

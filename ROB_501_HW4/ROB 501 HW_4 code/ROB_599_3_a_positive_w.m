clear all
close all
clc

% Parameters
w = 3; % Disturbance in angular velocity
Kp = 5; 
Kd = 0.1; 
theta_cmd = pi/3; 
x0 = [pi/10 0.3]';  % Initial conditions [theta(0), theta_dot(0)]

% Time span for the simulation
tspan = [0 10];

% Simulating the system using ode45
[T, X] = ode45(@(t, x) linear_pendulum(t, x, w, Kp, Kd, theta_cmd), tspan, x0);

% Plotting the results
figure;
subplot(2,1,1);
plot(T, X(:,1), 'r', 'LineWidth', 1.5); % Plot theta(t)
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('$\theta(t)$ (rad)', 'Interpreter', 'latex');  % Use $ for LaTeX math mode
title('Response of $\theta(t)$', 'Interpreter', 'latex');  % Use $ for LaTeX math mode
grid on;

subplot(2,1,2);
plot(T, X(:,2), 'b', 'LineWidth', 1.5); % Plot theta_dot(t)
xlabel('Time (s)', 'Interpreter', 'latex');
ylabel('$\dot{\theta}(t)$ (rad/s)', 'Interpreter', 'latex');  % Use $ for LaTeX math mode
title('Response of $\dot{\theta}(t)$', 'Interpreter', 'latex');  % Use $ for LaTeX math mode
grid on;

% Define the linear_pendulum function
function [xdot] = linear_pendulum(t, x, w, Kp, Kd, theta_cmd)
    xdot = zeros(2,1);
    % Equation for theta_dot (adding the disturbance w here)
    xdot(1) = x(2);
    
    % Equation for theta_ddot (angular acceleration)
    xdot(2) = (24.525 - 12.5 * Kp) * x(1) + (-4.16 - 12.5 * Kd) * x(2) + 12.5 * Kp * theta_cmd - 12.5*Kd*w;
end

% State-space matrices (including disturbance)
A = [0, 1;
    (24.525 - 12.5 * Kp), (-4.16 - 12.5 * Kd)];

B = [0,0;
     12.5 * Kp, -12.5*Kd];


% Compute the steady-state value (accounting for disturbance w)
X_ss = -inv(A) * (B * [theta_cmd; ...
    w]);

% Display the steady-state value of theta
disp('Steady-state value of the state variables are:');
disp(X_ss);  % This is the steady-state value of theta

disp('steady-state value of theta is :')
disp(X_ss(1))

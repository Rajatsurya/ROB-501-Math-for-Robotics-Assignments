syms t
y2 = t;
y4 = sin(pi * t);

% Define inner product integrals from 0 to 2
A = [int(y2 * y2, t, 0, 2), int(y2 * y4, t, 0, 2);
     int(y2 * y4, t, 0, 2), int(y4 * y4, t, 0, 2)];

% Define the right-hand side
b = [2; pi];  % adjust according to your problem specifics

% Solve for beta
beta = A \ b;
disp(beta)

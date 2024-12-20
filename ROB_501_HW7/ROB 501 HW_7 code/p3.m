A = [1, 0, sqrt(2);
     0, 2, 0;
     sqrt(2), 0, 0;];

v1 = [0; 1; 0];  % Transpose not necessary since it's already a column vector

D1 = A * v1;  % Matrix-vector multiplication
D2 = 2 * v1;  % Scalar multiplication

% Display results separately
disp('D1 = ');
disp(D1);% Step A

disp('D2 = ');
disp(D2);% step A

[V,D] = eig(A)

v2 = [0.5774;0;-0.8165;];

v3 = [0.8165;0;0.5774];

dot_v1_v2 = dot(v1, v2);  % Should be 0
dot_v1_v3 = dot(v1, v3);  % Should be 0
dot_v2_v3 = dot(v2, v3);  % Should be 0

disp('Dot product of v1 and v2:');
disp(dot_v1_v2);% Step B

disp('Dot product of v1 and v3:');
disp(dot_v1_v3);% Step B

disp('Dot product of v2 and v3:');
disp(dot_v2_v3);% Step B

V = [v1,v2,v3];% Step B

disp(V);% Step B
disp(V'*V);% Step B

L = V'*A*V;

disp(L);% Step C

A2 = [-1.0001, 0.0001;
    0.0001, 2.0001;];

[U2,D1]=eig(A2)% step D
disp(U2*U2');% step D

X = U2'*A2*U2;
disp(X) %step D

U = [1, 0, 0;
    0,-1.000,0;
    0,0,1.000];%Step E

disp(U*U');

O = V*U;
disp(O);
disp(O*O');%Step F

Lambda = O'*A*O;
disp(Lambda);% step g 
















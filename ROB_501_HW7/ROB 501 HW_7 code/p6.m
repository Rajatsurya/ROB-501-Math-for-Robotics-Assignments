% A matrix is +ve definite if all the eigenvalues are +ve
% A matrix is semi +ve definite if the min. of all the eigenvalues is 0

A1 = [1,3;
      3,9;];

A2 = [6,10,11;
      10,19,19;
      11,19,21;];

A3 = [2,6,10;
      6,10,14;
      10,14,18;];

% Compute the eigenvalues and eigenvectors
[V1, D1] = eig(A1);
[V2, D2] = eig(A2);
[V3, D3] = eig(A3);

% Display eigenvalues of each matrix
disp('Eigenvalues of A1:');
disp(diag(D1));  % Only display eigenvalues, not the whole diagonal matrix

disp('Eigenvalues of A2:');
disp(diag(D2));

disp('Eigenvalues of A3:');
disp(diag(D3));

% Check positive definiteness for A1
if all(diag(D1) > 0)
    disp('A1 is positive definite');
    disp(V1);
    disp(V1'*V1);
    disp(D1);
elseif min(diag(D1)) == 0
    disp('A1 is semi-positive definite');
else
    disp('A1 is not positive or semi-positive definite');
end

% Check positive definiteness for A2
if all(diag(D2) > 0)
    disp('A2 is positive definite');
    disp(V2);
    disp(V2'*V2);
    disp(D2);
elseif min(diag(D2)) == 0
    disp('A2 is semi-positive definite');
else
    disp('A2 is not positive or semi-positive definite');
end

% Check positive definiteness for A3
if all(diag(D3) > 0)
    disp('A3 is positive definite');
elseif min(diag(D3)) == 0
    disp('A3 is semi-positive definite');
else
    disp('A3 is not positive or semi-positive definite');
end

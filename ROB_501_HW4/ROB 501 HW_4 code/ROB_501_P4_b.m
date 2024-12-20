clear all 
clc
load HW05_Prob4_Data.mat
x=t;
Y=f;
A = [sin(pi*x), sin(2*pi*x), sin(3*pi*x), sin(4*pi*x), sin(5*pi*x)];
det(A'*A)
alpha_hat= inv(A'*A)*A'*Y;
c=alpha_hat
plot(x, Y, "o", x, c(1)*sin(pi*x) + c(2)*sin(2*pi*x) + c(3)*sin(3*pi*x) + c(4)*sin(4*pi*x) + c(5)*sin(5*pi*x))
gtext('y=c_1*sin(πx) + c_2*sin(2πx) + c_3*sin(3πx) + c_4*sin(4πx) + c_5*sin(5πx)')
xlabel('x')
ylabel('y')
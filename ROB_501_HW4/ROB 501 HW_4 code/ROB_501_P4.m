clear all 
clc
load HW05_Prob4_Data.mat
x=t;
Y=f;
A=[ones(size(t)),x,x.^2,x.^3,x.^4,x.^5];
det(A'*A)
alpha_hat= inv(A'*A)*A'*Y;
c=alpha_hat
plot(x,Y,"o",x,c(1)+c(2)*x+c(3)*x.^2+c(4)*x.^3+c(5)*x.^4+c(6)*x.^5)
gtext('y=c_0+c_1x + c_2 x^2 + c_3 x^3+ c_4 x^4 + c_5 x^5')
xlabel('x')
ylabel('y')
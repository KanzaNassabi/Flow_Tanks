%Conical Tank
H=1;
a=0.4;
b=0.001905;
Fu0=1e-3;
R=900;

h0=Fu0^2*R^2

A=-1/((2*R*(sqrt(h0)))*(pi*(((a-b)^2)*(h0^2))/(H^2)+((2*b*(a-b))/H)*h0+b^2))
B=1/(pi*(((a-b)^2)*(h0^2))/(H^2)+((2*b*(a-b))/H)*h0+b^2)
C=1;
D=0;

spher_ss=ss(A,B,C,D);
spher_tf=tf(spher_ss)
% Spherical tank
Rr=0.5;
R=30;
Fu0=15e-3;

h0=Fu0^2*R^2

A=(2*pi*(Rr-h0))/(pi*(2*Rr-h0)*h0)^2*(sqrt(h0)/(R)-Fu0)-1/(2*R*sqrt(h0)*(pi*(2*Rr-h0)*h0))
B=1/(pi*(2*Rr-h0)*h0)
C=1;
D=0;

spher_ss=ss(A,B,C,D);
spher_tf=tf(spher_ss)
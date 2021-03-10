syms u1 u2 u3 u4 f1 f2 f3 f4 K1 K2 K3 K4;
l=0.34*sqrt(2)/2; % m

[f1,f2,f3,f4]=solve('u1=K1*(f1+f2+f3+f4)',...
                    'u2=K1*l*(f1+f2-f3-f4)',... % roll , y position
                    'u3=K1*l*(f1+f4-f2-f3)',... % pitch, x position
                    'u4=K4*(f1+f3-f2-f4)',...
                    'f1,f2,f3,f4');
                
f1 = (K4*u2 + K4*u3 + K1*l*u4 + K4*l*u1)/(4*K1*K4*l);

f2 = (K4*u2 - K4*u3 - K1*l*u4 + K4*l*u1)/(4*K1*K4*l);

f3 = -(K4*u2 + K4*u3 - K1*l*u4 - K4*l*u1)/(4*K1*K4*l);

f4 = -(K4*u2 - K4*u3 + K1*l*u4 - K4*l*u1)/(4*K1*K4*l);

K1=0.22;
K4=1.06;


Ix=0.047; %kg/m^2
Iy=0.047; %kg/m^2
Iz=0.0915; %kg/m^2



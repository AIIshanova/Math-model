model adv3
parameter Real N = 1224;
parameter Real n0 = 14;
parameter Real a1 = 0.7;
parameter Real a2 = 0.6;
Real n(start = n0);
equation
der(n)=(a1*time+a2*cos(time)*n)*(N-n);
end adv3;

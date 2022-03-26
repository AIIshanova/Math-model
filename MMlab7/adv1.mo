model adv1
parameter Real N = 1224;
parameter Real n0 = 14;
parameter Real a1 = 0.61;
parameter Real a2 = 0.000061;
Real n(start = n0);
equation
der(n)=(a1+a2*n)*(N-n);
end adv1;

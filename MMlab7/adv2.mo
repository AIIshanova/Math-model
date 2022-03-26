model adv2
parameter Real N = 1224;
parameter Real n0 = 14;
parameter Real a1 = 0.000073;
parameter Real a2 = 0.73;
Real n(start = n0);
equation
der(n)=(a1+a2*n)*(N-n);
end adv2;

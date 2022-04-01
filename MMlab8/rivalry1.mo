model rivalry1
parameter Real M01 = 4.2;
parameter Real M02 = 3.8;
parameter Real pcr = 11.4;
parameter Real N = 26;
parameter Real q = 1;
parameter Real thau1 = 14;
parameter Real thau2 = 22;
parameter Real p1 = 6.6;
parameter Real p2 = 4.5;

parameter Real a1 = pcr/(thau1^2*p1^2*N*q);
parameter Real a2 = pcr/(thau2^2*p2^2*N*q);
parameter Real b = pcr/(thau1^2*p1^2*thau2^2*p2^2*N*q);
parameter Real c1 = (pcr-p1)/(thau1*p1);
parameter Real c2 = (pcr-p2)/(thau2*p2);

Real M1(start = M01);
Real M2(start = M02);

equation
der(M1) = M1 - b/c1*M1*M2 - a1/c1*M1^2;
der(M2) = c2/c1*M2 - b/c1*M1*M2 - a2/c1*M2^2;
end rivalry1;

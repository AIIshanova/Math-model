model WAR2
  parameter Real a=0.35;
  parameter Real b=0.73;
  parameter Real c=0.45;
  parameter Real h=0.41;
  parameter Real x0=105000;
  parameter Real y0=95000;
  Real x(start=x0);
  Real y(start=y0);
 equation
  der(x)=-a*x-b*y+2*sin(2*time);
  der(y)=-c*x-h*y+cos(time)+1;
end WAR2;

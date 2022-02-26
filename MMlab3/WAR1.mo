model WAR1
  parameter Real a=0.35;
  parameter Real b=0.45;
  parameter Real c=0.69;
  parameter Real h=0.61;
  parameter Real x0=105000;
  parameter Real y0=95000;
  Real x(start=x0);
  Real y(start=y0);
 equation
  der(x)=-a*x-b*y+2*sin(time);
  der(y)=-c*x-h*y+cos(time)+1;
end WAR1;

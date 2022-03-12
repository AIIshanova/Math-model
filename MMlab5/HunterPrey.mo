model HunterPrey
parameter Real a = 0.37;
parameter Real b = 0.038;
parameter Real c = 0.36;
parameter Real d = 0.037;
//начальные условия
parameter Real x0 = 9;
parameter Real y0 = 20;
Real x(start=c/d);
Real y(start=a/b);
equation
der(x)=-a*x+b*x*y;
der(y)=c*y-d*x*y;
end HunterPrey;

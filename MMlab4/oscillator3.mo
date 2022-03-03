model oscillator3//x''+x'+30x=sin(0.6t)
parameter Real w = 30;
parameter Real g = 0.5;
parameter Real x0 = 0.7;
parameter Real y0 = 1.5;
Real x(start=x0);
Real y(start=y0);
equation
der(x)=y;
der(y)=sin(0.6*time)-2*g*y-w*x;
end oscillator3;

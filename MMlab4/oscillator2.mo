model oscillator2//x''+7x'+x=0
parameter Real w = 1;//w0^2 - собственная частота колебаний в квадрате 
parameter Real g = 3.5;// - параметр, характеризующий потери энергии
parameter Real x0 = 0.7;// начальное условие
parameter Real y0 = 1.5;// начальное условие
Real x(start=x0);
Real y(start=y0);
equation// система диф уравнений
der(x)=y;
der(y)=-7*y-x;
end oscillator2;

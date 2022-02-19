s=7.7;//начальное расстояние от лодки до катера
fi=3*%pi/4;

//функция, описывающая движение катера
function dr=f(theta,r)
    dr=r/sqrt(9.89);
endfunction;

//начальные условия
r0=s/4.3;//x1
theta0=0;

theta=0:0.01:2*%pi;

r=ode(r0,theta0,theta,f);//решаем фииференциальную систему

//функция, описывающая движение лодки
function xt=f2(t)
    xt=tan(fi)*t;
endfunction;

t=0:1:20;

//строим графики
polarplot(theta,r,style=color('green'));//построение траектории движения катера в полярных координатах
plot2d(t,f2(t),style=color('red'));//построение движения лодки

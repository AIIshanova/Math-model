---
# Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Модель боевых действий"
author: "Ишанова А.И. группа НФИБД-02-19"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: false # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Научиться строить модель боевых действий.

# Задание

Рассмотреть две простейшие модели боевых действий, построить график, перенести матемотическую модель в код (OpenModelica)).

## Вариант № 18

Между страной $X$ и страной $Y$ идет война. Численность состава войск
исчисляется от начала войны, и являются временными функциями $x(t)$ и $y(t)$. В начальный момент времени страна $X$ имеет армию численностью 105 000 человек, а в распоряжении страны $Y$ армия численностью в 95 000 человек. Для упрощения модели считаем, что коэффициенты $a,b,c,h$ постоянны. Также считаем $P(t)$ и $Q(t)$ непрерывные функции.

Постройте графики изменения численности войск армии $X$ и армии $Y$ для следующих случаев:

1. Модель боевых действий между регулярными войсками

$$
\frac{dx}{dt}=-0.35x(t)-0.45y(t)+2\sin(t)
$$
$$
\frac{dy}{dt}=-0.69x(t)-0.61y(t)+\cos(t)+1
$$

2. Модель ведение боевых действий с участием регулярных войск и партизанских отрядов

$$
\frac{dx}{dt}=-0.35x(t)-0.73y(t)+2\sin(2t)
$$
$$
\frac{dy}{dt}=-0.45x(t)y(t)-0.41y(t)+\cos(t)+1
$$

[1]

# Теоретическое введение

Моделирование боевых и военных действий является важнейшей научной и практической задачей, направленной на предоставление командованию количественных оснований для принятия решений.[2]

Целью моделирования является прогнозирование средних количеств пораженных и непораженных боевых единиц каждой группировки на любой момент времени.[3]

# Выполнение лабораторной работы

1. Пишем код для первой модели. (@fig:001)

Для данной модели:
  - $a=0.35;$
  - $b=0.45;$
  - $c=0.69;$
  - $h=0.61;$
  - $x0=105000;$
  - $y0=95000;$
  - $$\begin{cases}
    \frac{dx}{dt} = -ax-by+2\sin{t}\\
    \frac{dy}{dt} = -cx-hy+\cos(t)+1
    \end{cases}
    $$

![Код модели боевых действий между регулярными войсками](лаб3рис/1.png){ #fig:001 width=100%}

2. Компилируем, моделируем и получаем график. (@fig:002 и @fig:003)

![Модель боевых действий между регулярными войсками (время от 0 до 1)](лаб3рис/2.png){ #fig:002 width=100%}

![Модель боевых действий между регулярными войсками (время от 0 до 1.4)](лаб3рис/3.png){ #fig:003 width=100%}

3. Пишем код для второй модели. (@fig:004)

Для данной модели:
  - $a=0.35;$
  - $b=0.73;$
  - $c=0.45;$
  - $h=0.41;$
  - $x0=105000;$
  - $y0=95000;$
  - $$\begin{cases}
    \frac{dx}{dt} = -ax-by+2\sin{2t}\\
    \frac{dy}{dt} = -cx-hy+\cos(t)+1
    \end{cases}
    $$

![Код модели боевых действий с участием регулярных войск и партизанских отрядов](лаб3рис/4.png){ #fig:004 width=100%}

4. Компилируем, моделируем и получаем график. (@fig:005 и @fig:006)

![Модель боевых действийс участием регулярных войск и партизанских отрядов (время от 0 до 1)](лаб3рис/5.png){ #fig:005 width=100%}

![Модель боевых действий с участием регулярных войск и партизанских отрядов (время от 0 до 3)](лаб3рис/6.png){ #fig:006 width=100%}

# Выводы

В ходе выполнения данной работы мы познакомились с простейшей моделью боевых действий – моделью Ланчестера, а так же с OpenModelica.

# Список литературы

1. Методические материалы курса
2. Математические модели боевых и военных действий
В.В.Шумов, В.О.Корепанов: crm.ics.org.ru/uploads/crmissues/crm_2020_1/2020_01_14.pdf
3. https://intuit.ru/studies/educational_groups/594/courses/499/lecture/11353?page=7
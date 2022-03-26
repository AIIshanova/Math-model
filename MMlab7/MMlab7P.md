---
title: "Защита лабораторной работы №7"
author: |
  Ишанова А.И.
date: "26.03.2022, Moscow"
output:
  beamer_presentation: default
  slidy_presentation: default
  ioslides_presentation: default
  powerpoint_presentation: default
subtitle: Эффективность рекламы
lang: ru-RU
institute: |
  RUDN University, Moscow, Russian Federation
toc: false
slide_level: 2
theme: metropolis
header-includes:
- \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
- \makeatletter
- \beamer@ignorenonframefalse
- \makeatother
aspectratio: 43
section-titles: yes
---

# Прагматика выполнения лабораторной работы

- знакомство с моделью эффективности рекламы
- рассмотр изменения результатов в зависимости от изменения параметров
- рассмотр изменения результатов в зависимости от способа описания модели через дифференциальные уравнения

# Цель работы

Ознакомится с моделью эффективности рекламы и научиться ее моделировать.

# Задание работы

Постройте график распространения рекламы, математическая модель которой описывается следующим уравнением:

1. $$\frac{dn}{dt}=(\alpha_1+\alpha_2 \cdot n(t))(N-n(t)), \alpha_1 \gg \alpha_2$$
2. $$\frac{dn}{dt}=(\alpha_1+\alpha_2 \cdot n(t))(N-n(t)), \alpha_2 \gg \alpha_1$$
3. $$\frac{dn}{dt}=(a1 \cdot t+a2 \cdot \cos(t) \cdot n(t))(N-n(t))$$

#  Выполнение лабораторной работы

- реализуем в OpenModelica модель  для случая $$\frac{dn}{dt}=(\alpha_1+\alpha_2 \cdot n(t))(N-n(t)), \alpha_1 \gg \alpha_2$$
- компилируем и получаем график
- реализуем в OpenModelica модель  для случая $$\frac{dn}{dt}=(\alpha_1+\alpha_2 \cdot n(t))(N-n(t)), \alpha_2 \gg \alpha_1$$
- компилируем и получаем график
- находим максимум скорости по графику производной
- реализуем в OpenModelica модель  для случая $$\frac{dn}{dt}=(a1 \cdot t+a2 \cdot \cos(t) \cdot n(t))(N-n(t))$$
- компилируем и получаем график

# Результаты выполнения лабораторной работы

- код модели эффективности рекламы в OpenModelica для трех случаев
- графики для моделей

## График для 1 случая

![График для 1 случая](g-1.png){#fig:001 width=80%}

## График для 2 случая

![График для 2 случая](g-2.png){#fig:002 width=80%}

## График для 2 случая - максимум скорости

![График скорости распространения рекламы](g-2-2.png){#fig:003 width=80%}

## График для 3 случая

![График для 3 случая](g-3.png){#fig:004 width=80%}

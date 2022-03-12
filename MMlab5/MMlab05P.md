---
## Front matter
lang: ru-RU
title: Защита лабораторной работы №5 "Модель хищник-жертва"
author: Ishanova A.I.
group: NI-202
institute: RUDN University, Moscow, Russian Federation
date: 2022 Mar 12rth

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---

# Прагматика выполнения лабораторной работы

- разбор модели хищник-жертва
    - при заданных начальных условиях
    - при стационарном состоянии

# Цель лабораторной работы

Научиться строить модельхищник-жертва.

# Задачи выполнения лабораторной работы

- реализовать модель хищник-жертва
    - построить график зависимости $x$ от $y$ и графики функций $x(t)$, $y(t)$
    - найти стационарное состояние системы

#  Выполнение лабораторной работы

- реализуем в OpenModelica модель хищник-жертва с заданными начальными условиями
- компилируем и получаем график
- реализуем в OpenModelica реализовать модель хищник-жертва для стационарного состояния системы
- компилируем и получаем график

# Результаты выполнения лабораторной работы

- код модели хищник-жертва в OpenModelica
- графики для для модели

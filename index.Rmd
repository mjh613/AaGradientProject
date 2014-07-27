---
title       : A-a Gradient Functionality
subtitle    : The Pitch
author      : mjh613
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## A-a Gradient Tool

Created by mjh613 for Coursera
July 27, 2014

--- .class #id 

## Background and Rationale

* Patients sometimes have trouble getting oxygen into their blood.
* Doctors and respiratory therapists need to calculate the A-a gradient to determine if a potential underlying cause is present.
* Everyone has smartphones nowadays and will appreciate an app that lets you do this.

--- .class #id 

## Calculations

To calculate the A-a gradient, you will need:
* PaO2
* PaCO2
* FiO2 (set at 0.21, or room air, by default)
* P_atmosphere (set at 760 by default)
* P_water (set at 47 by default)
* Respiratory quotient (set at 0.8 by default)

--- .class #id 

## Try it out for yourself!

<http://mjh613.shinyapps.io/AaGradientProject/>

What is the default A-a gradient on the app?

1. 1
2. 20
3. _12.23_
4. 72

*** .hint Load the shinyapp.
*** .explanation It uses the equation Aagrad = FiO2*(Patm-Pw)-(PaCO2/R)-PaO2

--- .class #id 

## Thanks

Thanks for trying this out.

--- .class #id 

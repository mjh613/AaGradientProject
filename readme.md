Shiny App: A-a Gradient
========================================================

This document explains the usage and purpose of the A-a gradient shinyapp that was created by mjh613 for the Coursera Course "Creating Data Products" on July 27, 2014.

Basically, this is a functionally useful application for those in the medical or respiratory therapist world. It has to do with something called the alveolar-arterial gradient. Basically, when a patient is having trouble getting oxygen into their bloodstream (artery), one can calculate the expected alveolar oxygen concentration based on several variables. If the difference (gradient) between the alveolar and arterial concentration is large (> about 12-14), then there is likely a diffusion problem in the alveoli. This is helpful on the clinical diagnostic pathway.

For more on this, please go to Wikipedia <http://en.wikipedia.org/wiki/A-a_gradient>.

For this *shiny* app, one can enter the values that one has learned from an arterial blood gas, and get the calculated A-a gradient.

```r
aagrad <- function(fio2,patm,pw,paco2,pao2,R) fio2*(patm-pw)-(paco2/R)-pao2
```

The entered values are:
* PaO2: The partial pressure of oxygen in the arterial blood.
* PaCO2: The partial pressure of carbon dioxide in the arterial blood.
* FiO2: The fraction of inspired air that is oxygen (0.21 on Room Air)
* P_atmosphere: The atmospheric pressure (760 mmHg as default)
* P_water: The partial pressure of water in the human body (47 mmHg as default)
* Respiratory quotient: A measure of the biochemical input of O2 and output of CO2 (0.8 as default).

The expected PAO2 (arterial oxygen) is calculated based on a formula, and the gradient is found by subtracting PAO2 - PaO2.

---
title       : Heart Rate and Optimal Weight Calculator 
subtitle    : Recommendations for exercise heart rates for men and women
author      : B. McCracken
job         : Tech Entreprenuer 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
output      : html_document 
runtime     : shiny
---

## Maximum Heart Rate 

The target heart rate for a woman is not the same as for a man.  In addition, the target heart 
rate depends on your fitness objective: general overall quaility of life vs. weight loss/muscle 
building   

#### Formulas for maximum heart rate at various exercise levels

1. Man = 220 - Age
2. Woman = 206 - .85% Age
3. Moderate = 50%-70%
4. Vigourous = Aerobic (cardiovascular) 70%-80% 
5. Vigourous = Anaerobic (lactic acid) 80%-85%

DISCLAIMER: THE MAXIMUM HEART RATE CALCULATOR PROVIDES GENERAL REFERENCE TO
OPTIMIZE PHYSICAL EXERCISE PROGRAM AS NOT INTENDED AS A SUBSTITUTE FOR 
CONSULTING WITH YOUR PHYSICIAN OR OTHER HEALTHCARE PROFESSIONALS 

--- 

## Aerobic vs. Anerobic Exercise

**Aerobic Exercise:** When exercising aerobically, our bodies use glycogen and fat as fuel. Low to 
moderate level of exertion can be sustained over long periods. As you breathe more heavily with exertion 
carbon dioxide is expelled from your body. Very little lactic acid is produced.
 
**Benefits:** Aerobic exercise not only improves overall health and quality of life, but may also extend life. 
Aerobic exercise burns fat, improves mood, strengthens the heart and lungs and reduces your risk of diabetes. 

**Anerobic Excercise:** Oxygen is linited with anaerobic exercise. When we exercise anaerobically glycogen
is used as fuel. During anaerobic exercise your body builds up lactic acid, causing discomfort and fatigue 
at sustained levels. Anaerobic exercise or high intensity exercise happens in short bursts. Sprinter (anaerobic)/
marathoner (aerobic). 

**Benefits:** Anaerobic exercise helps build lean muscle mass endurance and fitness levels. Calories are burned
more efficiently in bodies with more muscle. Anaerobic exercise helps weight management as it burns more calories
even in a body at rest. 

More info at: <http://www.fitness19.com/aerobic-and-anaerobic-exercise-what-is-the-difference>

--- 

## Formulas for optimal body weight 

The ideal human body weight is a topic of debate. There are hundreds of formulas and 
theories have been invented but the answer is debatable.  Following are a few: 

- J. D. Robinson Formula (1983)
- D. R. Miller Formula (1983)
- G. J. Hamwi Formula (1964)
- B. J. Devine Formula (1974)

Major factors contributing to a person's ideal weight are height, gender, age, body frame, 
and body type.  This application utilizes the Hamwi formula which assumes a medium frame:

- Man     105.82 + 5.95 per inch over 5ft
- Woman   100.31 + 4.85 per inch over 5ft 

These formulas generate rates for what some would consider appear to be 
malnutritious person. The application illustrates a range of the calculated 
rate and the calculated rate plus 10% which is more realistic   

---

## Application to calculate optimal maximum heart rate and body weight

Test your heart rate at: <https://mccracmiler.shinyapps.io/DDPAPP/> 


### **Go Warriors!!!**


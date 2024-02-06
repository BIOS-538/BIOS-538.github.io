# Introduction to Tidyverse Worksheet
# Bios 338/538
# All answers to questions will be listed at the end but please try to figure out the code first! 
# The data set you will be working with today is called mtcars. This is an introductory dataset on 32 vehicles and some of their characteristics:
#  •	Mpg: Miles per gallon – a metric of fuel efficiency
#  •	Cyl: Cylinders – the more cylinders the faster the car
#  •	Disp: Displacement – a metric for size of the engine
#  •	Hp: Horsepower – engine power
#  •	Drat: Driveshaft Ratio: ¯\_(ツ)_/¯ (don’t worry about this one)
#  •	Wt: Weight (in tons)
#  •	Qsec: ¼ mile time – measurement of acceleration
#  •	Vs: engine shape – Binary (1 is V shape, 0 is other)
#  •	Am: transmission – automatic or manual
#  •	Gear: number of gears
#  •	Carb: number of carburetors
# Whenever you work with new data it is always important as a first step to familiarize yourself with what each variable means!
  
# By the way you can make new sections with CTRL + SHIFT + R
# Load Data ---------------------------------------------------------------

data("mtcars")

# *You may get the dataset under the Values section 
# *in your environment saying <promise>. Just click on the word “mtcars” if this happens!


# Q1: filter() ----------------------------------------------------------------------

# Filter data for cars that have > 20 miles per gallon 


# Q2: filter() ----------------------------------------------------------------------


# Q2 Filter data for cars that have both < 110 horsepower and have 6 cylinders


# Q3: mutate() ----------------------------------------------------------------------

# Make a new column called kpg (kilometers per gallon) and multiply mpg by the conversion factor of kilometers per mile (1.6) save this new dataframe as mtcars_kpg


# Q4: mutate() ----------------------------------------------------------------------

# 5.	Make a new column called power_ratio that displays the horsepower per weight of each car and arrange it by least to greatest. 
# Save dataframe as mtcars_power_ratio (*bonus figure out how to arrange it greatest to least!)


# Q5: rename() ----------------------------------------------------------------------

# Using the mtcars_kpg dataframe, rename the column wt to “weight” and save the dataframe


# Q6: histogram ----------------------------------------------------------------------

# Make a histogram of the distribution of mpg 


# Q7: scatterplot geom_point() ----------------------------------------------------------------------

# Make a scatterplot (geom_point()) of the relationship between miles per gallon and power ratio.
# Look at what we see, looks like there may be a linear relationship! But we will get there in future lectures!


# Q8: plots ----------------------------------------------------------------------

# To further investigate the relationship in the previous plot let’s visualize how the number of cylinders plays a role in this relationship. 
# Add color = factor(cyl) into the aesthetic! Do you notice any relationships?


# Q9: larger points ----------------------------------------------------------------------

# As a teaser for next week, let’s make the size of the dots bigger, 
# and change the axis titles to “MPG (Miles Per Gallon)” and “Power Ratio” with the labs function.
# Look at the labs function documentation using the ?labs function and read the documentation to figure out how it works! 
# To make the dots bigger add size = 2 inside geom_point()

























# Answers! Don't scroll past before trying the problem------------------------------------------------------------
# Googling is Ok!

# 1 mtcars %>% filter(mpg > 20)
# 2 mtcars %>% filter(hp < 110, cyl == 6) Or mtcars %>% filter(hp < 110 & cyl == 6)
# 3 mtcars_kpg <- mtcars %>% mutate(kpg = mpg * 1.6) 
# 4 mtcars %>% mutate(power_ratio = hp / wt) %>% arrange(power_ratio)
# Bonus: mtcars_power_ratio<- mtcars %>% mutate(power_ratio = hp / wt) %>% arrange(desc(power_ratio))
# 5 mtcars_kpg <- mtcars_kpg %>% rename(weight = wt)
# 6 mtcars_kpg %>% ggplot(aes(x = mpg)) + geom_histogram()
# 7 mtcars_power_ratio %>% ggplot(aes(x = mpg, y = power_ratio)) + geom_point()
# 8 mtcars_power_ratio %>% ggplot(aes(x = mpg, y = power_ratio, color = factor(cyl))) + geom_point()
# 9 mtcars_power_ratio %>% ggplot(aes(x = mpg, y = power_ratio, color = factor(cyl))) + geom_point(size = 2) + labs(x = “MPG (Miles Per Gallon)”, y = “Power Ratio”)

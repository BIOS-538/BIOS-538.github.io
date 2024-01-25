# class5_loops_functions.R

# Goals ----------------------------------------------------------

# 1. [Iteration]: Running the same(ish) command with for() loops
for (variable in vector)  "Do something with the variable"

# 2. [Modularization]: Splitting commands into functions for reuse
do_mathematical_stuff <- function(input1 = x) (x + 25)^2
  
# 3. [Vectorization]: Enabling functions to run on vectors
# ... this subsumes for() loops and makes for cleaner code
# ... and is easier to generalize when your data changes

do_mathematical_stuff(input1 = vector) # vector: c(x1, x2, x3)


# Demo -----------------------------------------------------------



## 1. Iteration/repeating actions --------------------------------


# print text along with each number in the vector
for (n in k) {# for every element in k
 print("I was ", n, " years old")  
}


# calculate something with each number in a vector


## 2. functions() as reusable-modules ----------------------------

# Functions help write re-usable code chunks / modules
# Philosophy: Do not ~repeat yourself > 2 times
# ... write a function the third time you copy-paste code!

#' this function calculates the average of the numbers in a vector
get_mean <- function(x) {
  
  s = sum(x) # add all values in x
  n = length(x) # get the number of elements in x
  mean = s / n # divide the sum by the number of elements
}

# use the function
get_mean(1:5) 
get_mean(x = 1:5) # more informative when there are > 1 inputs

# simple functions can be written consisely (one liners)..
get_mean <- function(x) sum(x)/length(x) # function to get average



## 3. Vectorization: functions() as loops ------------------------

(x + 25)^2 # replace x with a vector k and see if it works

# What does this mean?






# Practice solutions? ----

# ...
for (i in k) { # for every element in k
  
  # Print if it was even or odd
  if(i %% 2 == 0) {
    print('even')
  } else print('odd')
}
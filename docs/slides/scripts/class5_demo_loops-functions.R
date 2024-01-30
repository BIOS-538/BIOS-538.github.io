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

k <- 3:6

# print text along with each number in the vector
for (n in k) {# for every element in k
 print("I was ")
  print(n)
  print(" years old")  
}

# same loop but better written! 
for (n in k) cat('I was', n, 'years old\n')

# Definitions: 
# n = iterator variable. Use this inside the loop
# k = iterated vector. DON'T use this inside the loop!
# inside the flower brackets {..} = body of the loop
# .. brackets are optional for a one-liner but recommended
# .. as a best practice for readability

# The best indentation/formatting for readability



# calculate something with each number in a vector
x <- 6
(x + 5)^2

for (number in k) {
  print((number + 6)^2)
}



## 2. functions() as reusable-modules ----------------------------

# Functions help write re-usable code chunks / modules
# Philosophy: Do not ~repeat yourself > 2 times
# ... write a function the third time you copy-paste code!

#' this function calculates the average of the numbers in a vector
#' @param `x` is a vector of numbers. If you give words, R will be angry
#' @returns the average of all the numbers in the vector
get_mean <- function(x) {
  
  s <- sum(x) # add all values in x
  n <- length(x) # get the number of elements in x
  avg <- s / n # divide the sum by the number of elements
  return(avg)
}

# use the function
get_mean(1:5) 
get_mean(x = k) # more informative when there are > 1 inputs

# simple functions can be written concisely (one liners)..
get_mean <- function(x) sum(x)/length(x) # function to get average



## 3. Vectorization: functions() as loops ------------------------

(x + 25)^2 # replace x with a vector k and see if it works

# What does this mean?



## START class 6 : 30/1/24 -------------------------------------------

## 2.1.a Without functions -------------------------------------------

# We shall do a simple calculation but repetitively
# I like to think of functions as algebra with variable x

# Doing some calculations without a function (~ algebra word problem)

# mom was 28 when child was born
# what is mom's age when child is 5, 10, 25 years old?

x <- 0
(x + 28)



## 2.1.b. With function() ----



# Define things in the function: body, variables

my_fun2 <- function(x) cat('input was:', x, '\n  Output', (x + 2) * k)

# what variables does a function see and show?



# simple example: I like to think of functions as algebra with variable x
my_fun <- function(x) cat('input was:', x, '\n') 

# x can take on any value by calling the function with that value
my_fun('10 cats') ; my_fun(5.3) ; my_fun(TRUE)


my_fun2 <- function(x) cat('input was:', x, '\n  Output', (x + 2) * k) 


# Practice solutions? ----

# ...
for (i in k) { # for every element in k
  
  # Print if it was even or odd
  if(i %% 2 == 0) {
    print('even')
  } else print('odd')
}



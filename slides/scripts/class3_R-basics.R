# Class3_R-basics.R

# Note: Everything after the "#" is a human readable comment that R ignores

# FOLLOW ALONG:
# Instructions.
# 1. Type the commands your self into the console 
# ...(don't copy paste, typing makes you understand better)
# 2. Run it and write a comment next to the command in this script
# ... to explain what the command does (first example provided in line 18)

# Simple datatypes ----
# Note: The 4 dashes make a new section, 
# ..... check outline button on the top right of the script pane
# two hashes ## with the 4 dashes make a subsection, 
# .. and so on for a structured outline!


## Numbers ----

# write any number, it will appear as the output

35

# if you assign it to a variable, the value will be stored for later use
x <- 2.5 # assign a number to variable x
y = 7 # don't use this..
z <- 7

# to show the output type 
x

# YOUR TURN: complete comments on each of the following lines after running them
class(x)

# Checking type
is.numeric(x)
is.integer(x)

### Numeric operations ----

2 + 3 # addition
# try exponent (^), and remainder (%%) operators

# SIDE NOTE: R reads these operations like any other function: f(x, y)
`+`(2, 3)
`>`(2, 3)
`<-`(g, 4)


# TIP: Use up and down arrows in the "Console" to move around in your history


# Your turn now:
# a) Add today's month plus day plus year; save it as variable: date_sum
# b) Multiply the number of letters in the alphabet by 5

## Logical / binary datatype ----

l1 <- TRUE

# This is also a logical type
l2 <- (x > 3)
# Essentially, you are asking R logical questions requiring TRUE / FALSE responses

# check the type 
is.logical(l2)


### Logical operations

# YOUR TURN NOW
# what do the "==" and "!=" do?
x == 2.5
4 != 4

# Operating on two logical values
TRUE & FALSE
TRUE | FALSE


# type coercion/ conversion
as.logical(x)
as.logical(0)


# REFERENCE: Logical operations
# Operator	 Description
# <	         less than
# <=	       less than or equal to
# >	         greater than
# >=	       greater than or equal to
# ==	       exactly equal to
# !=	       not equal to
# !x	       not x
# x | y	     x OR y
# x & y	     x AND y
# isTRUE(x)  test if X is TRUE

x != 2.5

## Assignment operator/extra ----

# Does assignment work in reverse? [left to right]

# TRY THIS
4 -> y -> z
y
z

# Important things to note regarding variables:
# case sensitive (g != G)
# should not begin with numbers or symbols (5x, %cover)
# should not contain spaces (fun_games not fun games)
# make as short and intuitive as possible

This_ariable <- 6
thisVariable

## Character ----

z <- "we the people"
z
class(z)
# check type
is.character(z)

# both single 'quotes' and "double quotes" work
is.character('24')
z1 <- '24'

z1


# Compound datatypes --------------------------------------

# Combining simple datatypes into vectors (of the same type) 
# combining vectors into lists (can be different types here)

## Vectors ----

# Combine 'c()' values into a vector object

k <- c(5, 7, 8, 10)
class(k)
length(k)

# see output
k

# doesn't have to be numbers
cities <- c("Houston", "New York", "Atlanta", "Seattle")

# Many functions to make numeric vectors

# vector from 2 to 5
2:5
c(2, 3, 4, 5)
2.5:5.7

# More flexibility with sequence operator
seq(2, 7, by = 2)

# Repeats
rep(5, times = 10)

rep(c(2, 5), times = 3)
rep(c(2, 5, '4'), each = 3) 


rep(c('cat', 'goat'), 2)

## Vectorized operators / functions ----

# What happens here?
k
k + k

k + 2
k + rep(2, length(k))

# This is the powerful feature called "vectorization"

# what does this do?
k + k
k + c(2, 4, 6, 8)

# Explain this output
k
k + c(2, 4)

# Now this!
k + c(1, 2, 3)
k

# We can use logical operators on vectors just like single values.
k <- c(1:10)
k > 8
k >= 8

k < 5
k > 5 & k < 8 # Break this down into smaller parts to understand it


# STOPPED HERE (18/1/24) ------------------------

# reload k 
k <- c(5, 7, 8, 10)

# Note: everything you ran last week needs to be rerun again to bring
# .. variables into the environment again


# character operations

cities == "Los Angeles"

# What does the error say?
cities * 2

## Vector to single output functions ----

mean(k)
sum(k)


# More: Simple statistical functions
# mean (x)               mean of object x
# mean(x, trim = 0.5)    trimmed mean 
# sd(x)	                 standard deviation of object x
# var (x)                variance of object x
# median(x)	             median of object x
# quantile(x, probs)	   quantiles where x is the numeric vector whose quantiles are desired and probs is a numeric vector with probabilities in [0,1]. e.g., 30th and 84th percentiles of x: 
# y <- quantile(x, c(0.3, 0.84))
# range(x)	             range of object x
# sum(x), max(x), min(x)  ... etc
# abs(x)                 absolute value of object x


# Getting help for functions -----------------------------

# Option 1:"?function"

?mean
?sum
?lm
# R will tell you if you look for something that doesn't exist:
?gr


## Lists (START: 23/1/24) ----

# Lists are the most general, can include everything in them
# .. including other lists
small_list <- list(c('small', 'cats'), 4:5)

# rerun old vectors again
x <- 2.5 ; cities <- c("Houston", "New York", "Atlanta", "Seattle")

# make a bigger list
list(x, k, cities, small_list)


## Subseting (indexing) vectors and lists ----

# Get the first element in the list
small_list[1] # outputs a list with only 1 element
small_list[[1]] # two brackets: outputs a vector

# check type
class(small_list[1])
class(small_list[[1]]) # notice


# Programming -------------------------------------------------


## conditionals ----

# Explain this in plain english
seen <- "something"

if(seen == 'something') {
  print('say something')
}

what_is_x <- if(!is.integer(x)) "not an integer"

# check result
what_is_x


## Looping / repeating actions ----

# checking for even numbers
for(i in k) { # for every element in k
  
  # Print if it was even or odd
  if(i %% 2 == 0) {
    print('even')
  } else print('odd')
}

k

## Functions ----

# Functions help write re-usable code chunks

check_even_or_odd <- function(i) {
  if(i %% 2 == 0) {
    print('even') 
  } else print('odd')
} 

# How to use the function?
for(i in k) check_even_or_odd(i)

# Now if I change my mind, I can change the function behavior in one place

# MAKE CHANGES IN FUNCTION
# Change capitalization: 'even' to 'Even' and 'odd' ..
# Instead of printing, try to store the output; hint, use return()

# Rerun the function here


# Can we do this in a vectorized manner? => avoiding the for(..)
# TRY IT YOURSELF


# How to ask for help? ----
# Reprex function: Running a reproducible example
# use: for asking help

b <- 5
if(b %% 2) stop('please help me :(')

# copy the code above and run

reprex::reprex()

# see the results and comment what this function does?



# Closing thoughts -------------------------------------------

# We walked through simple and compound datatypes in R
# Saw how we can use conditionals and repeated instructions
# More efficient implementation with vectorized processing

# Save the r code file (i.e., .R file)

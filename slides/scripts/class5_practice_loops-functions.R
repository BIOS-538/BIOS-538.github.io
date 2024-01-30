# class5_practice_loops-functions.R

# Loading libraries ----
library(tidyverse)


# Recap/previous class? ---------------------------------------

# what was covered? 
# class3: 
  # data_types: numeric ; char ~ words (included in 1, 2)

# class4: 
  # subsetting vectors, lists (for the end../ -> in HW)
  # if()..else (included in 2.)

# Today's class practice -------------------------------------

## 1. Iteration/repeating actions ----------------------------

# Goal: will write a loop that calculates the number of letters
# ... of each word within a vector


# 1.0: Store a vector of 5 words
words <- c('ants', 'hill goat', 'good ...')

# 1.1: Grab the first word into a 'test' variable
test <- words[1]

# 1.2: Find the number of letters in the test word
# hint : stringr::str_length()
# another function: nchar()
nchar(test)


# 1.3: Now write a for() loop to do find num of letters for all
# ... words in the vector

# first approach
for (i in 1:length(words)) {
  # print(i) # debugging
  words[i] %>% nchar() %>% print()
}

# Second approach
for (w in words) {
  # print(w)
  nchar(w) %>% print()
}

## 2. functions() as reusable-modules ----------------------------


# 2.0: Write an if() command that checks if a number (ex 7) is 
# ... even or odd and print("even") or "odd" accordingly

# hint: (x %% n) gives you the remainder when x is divided by n

# check basic components
x %% 2 ; 5 %% 2
7 %% 2 == 0

if (x %% 2 == 0) print('even') else print('odd')


# 2.1: Create a function that checks if the number is even or odd
# ... and prints "even" or "odd" accordingly

# STOPPED HERE 25/1 ----

even_or_odd <- function(x)
{
  if (x %% 2 == 0) {
    print('even')
  } else {print('odd')}
}

even_or_odd(4)

for(n in k) {
  even_or_odd(n)  
}


# 2.2: Run this function on a test number


# 2.3: Run this function within a loop on a vector of numbers


# 2.4: Create a vector of 5 non-integers (ex: 2.4, 3.71 etc.)


# 2.5: Test the function on the non-integer vector


# 2.6: Modify the function to throw an error when
# hint: use the stop() function with input .. 
# ... "Decimal values detected. Please ensure integer input"


# 2.7: Documentation: Use special comments to document your function
# futrher reading
# https://roxygen2.r-lib.org/articles/rd.html#the-introduction

# example here

#' Sum of two numbers
#' @param `a` first number to add
#' @param `b` second number to add
#' @return Returns a + b
sum_ab <- function(a, b) {a + b}


## 3. Vectorization: functions() as loops ------------------------


# 3.0: Experience vectorization with mathematical functions
# ... Try this operation without a for() loop 
# ... run it directly on the vector: k
for (i in k) {print(i^2 - 10 + i/ 3)}


# Can we vectorize the even_odd and length functions
# 3.1: Test if the internal functions used in the even_odd function
# ... works on a vector?


# 3.1.1 : test %% ; == ; if(..) ; what else?


# 3.2: Enter the vectorized if_else() from tidyverse/dplyr!


# 3.3: Test if length() is vectorized?

# Any ideas on how to get length of words within a vector
# ... without the for loop?



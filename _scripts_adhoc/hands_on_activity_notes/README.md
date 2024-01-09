# TODOs

Sam & PK : Let us use script `random_numbers_printer.R` to generate two tables of normal distributed random numbers for printing eventually as a `kable::` in `table_print.Rmd` .

Let's aim for 110-120 data points for each distribution

## Steps

-   Generate random numbers into a data frame.
    -   Let's aim for single digits mostly (rnorm. mean 5, sd 1 ; rnorm. mean 8, sd 1)
-   We will `pivot_wider()` using a dummy variable to make the table rectangular for printing
-   call `kable::`'s table printing function
    -   Make the second table with a different font colour to differentiate from the first table
-   use this R script within a chunk of the table_print.Rmd function
-   Format nicely to print in multiple pages
-   Will use prashant's thick paper to print in keck 3rd floor printer and cut :)

# Statistics brushup hands-on activity

Here's what I'm thinking for an in-class, hands-on activity to rehash statistical basics of students. We shall discuss more in person and make props for it. Do let me know if you have any thoughts for additions or alternate ideas after reading this.

Goal: Cover random number concept, sampling from a population, making a histogram, motivate hypothesis testing, central tendencies. (\~basic probability intro?)

Activity: Ask each team to grab a few cardboard pieces with numbers written on them. They are sampling from a distribution. We keep track of the numbers they have and do t-testing for them in R and show them p-values.

Logistics: (5 people/group). 8 groups x 20 data points each of two different coloured data from 2 different distributions. Give each group an ID which will be used when entering data by the TAs

Flow :

-   (*5m*) What is a random number? *talk about coin toss, dice rolls.* Can we have more or less random? *usually people associate `random` with the maximum entropy state =\> uniform distribution*

-   (*5m*) Every random number has a distribution, *not necessarily uniform.* The mechanism of generating the random number governs the distribution. *typically we associate most things in the world with normal distributions*. Show data of heights..

-   (*5m*) explain activity: The numbers you have are `random`. *these random numbers have been sampled from a distribution (equation generated) or a population (set of all possible entries).*

-   (*55m*) You goal is to - - (*histogram, 10m*) Understand how these random numbers are spread out / "distributed"? - (*central tendancy, 20m*) Can you describe your data set with a single number? - (*hypothesis test, 25m*) How can you tell if your group is similar to your neighbor or not?

    -   Use your TAs computer to help you calculate p-values to compare with 1 same data group, 1 different data group and note these down for the homework.

-   (*5m*) Summarize today's learning. Connect it to real world research as a small sample from a huge population (of mice, trees, ..)

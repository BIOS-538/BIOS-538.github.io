# copied code over from `class17_solved_t-test_bootstrapping.qmd`

#' bootstrapping/sampling and return mean. Use for bootstrapping t-tests
#' @param .vector `numeric` vector to bootstrap on 
#' @param .size `numeric`. sample size, only if sampling
bootstrapped_mean <- function(.vector, .size = length(.vector))
{
  
  .boots <- 
    sample(.vector, size = .size, 
           replace = TRUE)
  
  # if you want the intermediate bootstrapped data, return `.boot`
  
  # otherwise will only return the summary measurement
  .means_boot <- mean(.boots)
}


#' get multiple bootstrapped means
#' @param .df grouped tibble, 2 categores in grouping col. Defaults `iris2_wide`
#' @param .column string; name of column for bootstrapping
get_n_boots <- function(.vec = NULL,
                        .df = iris2_wide,
                        .column = 'versicolor',
                        num_of_boots = 10000)
{
  
  # if vector is not provided, then
  # isolate the column from the dataset (as a vector, so need two : `[[`)
  .vec <- if(is.null(.vec)) .df[[.column]] else .vec
  .len <- length(.vec)
  
  # map_dbl returns a vector of numbers
  # better/faster than a for() loop: doesn't do many write operations
  map_dbl(1:num_of_boots,
          ~ bootstrapped_mean(.vec, .len))
}


# iris processing ----

library(tidyverse) # data manipulation + plotting
iris <- iris # get dataset into environment

iris2_wide <- 
  select(iris, Sepal.Length, Species) %>% # select the required columns
  
  filter(str_detect(Species, 'virginica|versicolor')) %>% # filter 2 species
  # str_detect() enables matching of strings using regular expressions
  
  
  # make a serial number column (without this pivot makes a single row!)
  mutate(index = row_number(), .by = Species) %>% 
  
  # now do the pivoting
  pivot_wider(names_from = Species, 
              values_from = Sepal.Length)
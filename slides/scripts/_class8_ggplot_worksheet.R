#' ---
#' title: "ggplot worksheet"
#' author: "Prashant Kalvapalle"
#' date: "2024-02-06"
#' output: html_document
#' editor: visual
#' ---
#' 
#' Use the prompts in this script to understand and practice ggplot commands to make and modify plots. *If you are done with the current activity early, explore modifying the plots such as changing the colours, adding more informative annotations such as labels / spelling out the data with text.*
#' 
## ----setup, include=FALSE--------------------------------
knitr::opts_chunk$set(echo = TRUE)

#' 
#' ## Load datasets and libraries
#' 
#' Load the `tidyverse` library *(which loads `ggplot` as well)*
#' 
#' Load data-sets - [histdata](../assets/histdata.csv) and [pointsdata](../assets/pointsdata.csv) from `.csv` files
#' 
## ----dataload--------------------------------------------
histdata <- .

pointsdata <- .


#' 
#' ## Histogram and density plots
#' 
#' Let us practice making one dimensional plots. ggplot takes only one variable, the frequency of this variable for the histogram is automatically calculated
#' 
#' -   Make a histogram for the variable `x1`
#' 
## ----hist1-----------------------------------------------


#' 
#' -   *change the variable of the histogram:* Make a histogram for the variable `y1` now
#' 
## ----hist2-----------------------------------------------


#' 
#' -   Separate multiple subsets of data by colouring them with `fill = column_name`.
#' 
#'     -   *This will split the plot into multiple independent histograms!*
#' 
## ----hist_colour-----------------------------------------


#' 
#' -   Add a smoothened `geom_density` onto the histogram
#' 
## ----hist_density----------------------------------------


#' 
#' ## Better then barplots
#' 
#' Now we practice plotting 2 dimensional data with a different dataset: `pointsdata` where
#' 
#' -   `x = categorical variable` : categorical =\> `factor` \~ ordered `character` vector with `levels`
#' 
#' -   `y = numerical variable`
#' 
#' 1.  Draw the plot with `geom_point()`
#' 2.  Calculate mean and plot
#' 3.  Add text label on the mean
#' 4.  Connect each replicate across the conditions with a `geom_line()`
#' 5.  Label the individual replicates
#' 
#' ## Points and lines
#' 
#' Now we practice plotting 2 dimensional data where both x and y are numerical variables
#' 
#' 1.  Make y1 vs x1 plot with points
#' 
## ----points----------------------------------------------


#' 
#' 2.  Join the points with a line
#' 
## ----addlines--------------------------------------------


#' 
#' 3.  Add colours for points
#' 
## ----addcolours------------------------------------------


#' 
#' 4.  Attempt something fancy
#' 
#' -   Add labels
#' 
#' -   Show mean on the graph etc..

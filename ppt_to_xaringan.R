# convert .pptx into Xaringan slides

# Prelims ----
library(tidyverse)
library(slidex)

# User inputs ----
file_path <- 'Class Materials/Powerpoint versions'
filenms <- list.files(path = file_path, pattern = 'pptx')

fls <- str_c(file_path, '/', filenms)

# testing
file_name <- 'Lecture01_BIOS338_538.pptx'
fls <- str_c(file_path, '/', file_name)

outdir <- 'Class Materials/Xaringan'

# Load ----
# pptx <- system.file("examples", "slidedemo.pptx", package = "slidex") # example file

# Process ----
map(fls,
    ~ slidex::convert_pptx(path = .x, author = "Prashant Kalvapalle",
                           out_dir = outdir)
)

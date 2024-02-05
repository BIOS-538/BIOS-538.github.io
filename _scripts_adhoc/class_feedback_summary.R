# class_feedback_summary.R

# Data is in google sheets, ask previous TAs/instructor for access to test script

# Load data, stuff ----
library(tidyverse)

sh.url <- 'https://docs.google.com/spreadsheets/d/1ghdbAG5HGsIIeleqVZsghPJa75uliFp8OVijb9T7VzA/edit#gid=1831197617'

pre_course_survey <- googlesheets4::read_sheet(sh.url, sheet = 2) # static data

attendance_feedback <- googlesheets4::read_sheet(sh.url, sheet = 1, )


# make categories ----

coding_exp_categories <- # make a regex matcher of categories
  c('no prior coding experience' = 'none',
    'minimal coding experience' = 'medium',
    'heavily on' = 'medium')

# add universal chars to replace full text containing regex
names(coding_exp_categories)  %>% 
  {str_c('.*', ., '.*')} -> names(coding_exp_categories)
    

# function to freeze dates to previous Tue/Thurs (timestamp / data today?)
# discard responses before class end ~ 3 pm?

# processing ----

## pre-course ----

# summarizing coding experience from pre-course

pre_course_summary <- 
  select(pre_course_survey, `Preferred Name`, 
         `What is your coding experience?`) %>% 
  rename(name = 'Preferred Name',
         coding_experience = `What is your coding experience?`) %>% 
  
  mutate(across(coding_experience, 
                ~ str_replace_all(.x, coding_exp_categories) %>% # condense response
                  fct_lump_min(min = 2) %>%  # lump singletons (not in top 3) to 'Other'
                  fct_relevel('none') # bring 'none' to first: emphasis
                  )) %>% 
  
  # extract first name
  mutate(across(name, 
                ~ str_extract(., '^[:alpha:]*')))

## daily-survey ----

attendance_polish <- 
  rename(attendance_feedback, 
         name = 'Name please :)',
         'date' = "Please enter today's date",
         'confuse' = 'Did anything confuse you in class today?',
         'feedback' = "Any feedback for today's class?"
         ) %>% 
  
  filter(!(is.na(confuse) & is.na(feedback))) %>% # remove if both are NA
  
  # select only useful columns
  select(name, date, confuse, feedback) %>% 
  
  # extract first name
  mutate(across(name, 
                ~ str_extract(., '^[:alpha:]*')))


## fuse data ----

fused_data <- left_join(attendance_polish, 
                        pre_course_summary,
                        relationship = 'many-to-many') %>% 
  
  arrange(coding_experience)

# TODO : first names are not unique. Needs work..

## pivoting ----

confuse_dat <- 
  select(fused_data, -feedback) %>% 
  pivot_wider(date, names_from = name, values_from = 'confuse')

feedback_dat <- 
  select(fused_data, -confuse) %>% 
  pivot_wider(date, names_from = name, values_from = 'feedback')


filter(fused_data, coding_experience == 'none') %>% view

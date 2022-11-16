# Load all required packages

#File Referencing
library(here)

#Summarize Data
library(skimr)

#Clean Data
library(janitor)

#Data Wrangling/Modification
library(dplyr)

#palmerpenguins
library(palmerpenguins)


view(penguins)

skim_without_charts(penguins)

glimpse(penguins)

head(penguins)

# use '-' to exclude specific column
#  Ctrl + Shift + M
penguins %>% 
  select(-species)

penguins %>% 
  select(-species,-island)

#rename : to change column names manually
penguins %>% 
  rename(m_f=sex)

# Dynamic renaming all columns at once
rename_with(penguins,toupper)

#unique and consistent column names- ensure only characters, numbers and underscore in name
unclean_penguins <- penguins %>% 
  rename("bill length mm"=bill_length_mm ,"flipper length mm"= flipper_length_mm )
view(unclean_penguins)

clean_penguins  <- clean_names(unclean_penguins)
view(clean_penguins)





#hint : use skim_without_charts(penguins) function to answer below question

# How many null records in sex column and how much percentage of data is missing in sex column

#Which numeric column doesn't have any missing data

#Which species has highest frequency

#Which island has lowest number of records

#clean below column names in unclean data
unclean_penguins <- penguins %>% 
  rename("bill depth mm"=bill_depth_mm ,"flipper length mm"= flipper_length_mm )
view(unclean_penguins)



##organize the Data


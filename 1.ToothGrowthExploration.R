library(tidyverse)

data("ToothGrowth")

View(ToothGrowth)

#To Filter data with dose = 
filtered_tg <- filter(ToothGrowth,dose == 0.5)
View(filtered_tg)

#To Sort data len ASC
arrange(filtered_tg,len)

arrange(filtered_tg,supp,desc(len))


arrange(filter(ToothGrowth,dose == 0.5),len)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)

View(filtered_toothgrowth)


filtered_toothgrowth_summary <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len))
filtered_toothgrowth_summary


## Find list of all Tooth Growth where supp is "VC", sort them on descending order of len, ascending dose
data("ToothGrowth")
View(ToothGrowth)
ToothGrowth$supp


filtered_tg_vc <- filter(ToothGrowth,supp == "VC")
View(filtered_tg_vc)
arrange(filtered_tg_vc,supp,desc(len),asc(dose))

filtered_toothgrowth_vc <- ToothGrowth %>% 
  filter(supp == "VC") %>% 
  arrange(desc(len),dose)

View(filtered_toothgrowth_vc)


## Find Mean, median, max and standard deviation of len for each supp
filtered_toothgrowth_summary <- ToothGrowth %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len),median_len = median(len), max_len = max(len), std_len = sd(len))
filtered_toothgrowth_summary


#Find frequency of each values in supp


#Find frequency of each values in dose


#Find all Tooth Growth having dose > 1.0 for oj supp





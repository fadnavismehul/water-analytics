library(dplyr)
library(ggplot2)
library(readr)
setwd('/home/mehul/Programming/Projects/Kaggle/Water-Analytics')

df <- read.csv('data/Aquifer_Auser.csv')


df$Date <- as.Date(df$Date)
str(df)

df %>% summarise_all(funs(sum(is.na(.))))

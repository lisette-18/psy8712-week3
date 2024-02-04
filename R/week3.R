#Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

#Data Import and Cleaning
raw_df <- read.csv("~/Desktop/PSY 8712/psy8712-week3/data/week3.csv", header = TRUE)
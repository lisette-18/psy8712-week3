#Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

#Data Import and Cleaning
raw_df <- read.csv("~/Desktop/PSY 8712/psy8712-week3/data/week3.csv", header = TRUE)
raw_df$timeStart <- as.POSIXct(raw_df$timeStart)
raw_df$timeEnd <- as.POSIXct(raw_df$timeEnd)
clean_df <- subset(raw_df, raw_df$timeStart > "2017-06-30 23:59:59")
clean_df <-  subset(clean_df, clean_df$q6==1)

#Analysis
clean_df$timeSpent <- difftime(clean_df$timeEnd, clean_df$timeStart, units = "secs")
hist(as.numeric(clean_df$timeSpent))
## R Programming Week 1 Quiz
#load quiz data

dat <- read.csv("hw1_data.csv", header = TRUE)

#In the dataset provided for this Quiz, what are the column names of the dataset?
colnames(dat)

#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
dat[1:2,]

#How many observations (i.e. rows) are in this data frame?
nrow(dat)

#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
dat[152:153,]

#What is the value of Ozone in the 47th row?
dat$Ozone[47]

#How many missing values are in the Ozone column of this data frame?
sum(is.na(dat$Ozone))

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(na.exclude(dat$Ozone))

#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
ozone31 <- dat[which(dat["Ozone"]>31),]
temp90 <- ozone31[which(ozone31["Temp"]>90),]
mean(temp90$Solar.R)

#What is the mean of "Temp" when "Month" is equal to 6?
month6 <- dat[dat$Month==6,]
mean(month6$Temp)

#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
sort(month5$Ozone, decreasing = TRUE)
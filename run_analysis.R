### 
### This R script was created for the Coursera course Getting and Cleaning Data project
### The Coursera objective sections are noted in the code below
#####

# first we create the file library
library(data.table)
library(dplyr)
setwd("~/mooc-r/UCI_Dataset")
#and then we import data set and read the train data fileone by one 
xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/y_test.txt")
xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/y_train.txt")
col_names <- read.table("features.txt")
test_participant <- read.table("test/subject_test.txt")
train_participant <- read.table("train/subject_train.txt")
#add column names to datasets
colnames(xtest) <- t(col_names[2])
colnames(xtrain) <- t(col_names[2])
#add participant data as new first column called "participant"
xtest$participant <-test_participant[,1]
xtrain$participant <-train_participant[,1]
#add activity data as new column called "activity"
xtest$activity <-ytest[,1]
xtrain$activity <-ytrain[,1]
#combine the datasets and remove duplicate column
merged <- rbind(xtrain, xtest)
duplicated(colnames(merged))
merged <- merged[, !duplicated(colnames(merged))]
# first we calculate the extract means and standard deviations
Mean <- grep("mean()", names(merged), value = FALSE, fixed = TRUE)
Mean <- append(Mean, 471:477)
InstrumentMeanMatrix <- merged[Mean]
STD <- grep("std()", names(merged), value = FALSE)
InstrumentSTDMatrix <- merged[STD]
#Replace the activity codes with meaningful terms
merged$activities <- as.character(merged$activities)
merged$activities[merged$activities == 1] <- "Walking"
merged$activities[merged$activities == 2] <- "Walking Upstairs"
merged$activities[merged$activities == 3] <- "Walking Downstairs"
merged$activities[merged$activities == 4] <- "Sitting"
merged$activities[merged$activities == 5] <- "Standing"
merged$activities[merged$activities == 6] <- "Laying"
merged$activities <- as.factor(merged$activities)
#add descriptive variable names by replacing abbreviations with human-readable terms
names(merged) <- gsub("Acc", "Accelerator", names(merged))
names(merged) <- gsub("Mag", "Magnitude", names(merged))
names(merged) <- gsub("Gyro", "Gyroscope", names(merged))
names(merged) <- gsub("^t", "time", names(merged))
names(merged) <- gsub("^f", "frequency", names(merged))
#create tidy dataset
merged.dt <- data.table(merged)
TidyData <- merged.dt[, lapply(.SD, mean), by = 'participant']
write.table(TidyData, file = "CleaningData", row.names = FALSE)

Getting and Cleaning Data Course Project
The purpose of this project is to prepare tidy data from the given dataset that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

The main steps in the script, run_analysis.R, include :

1.Loads the training and the test sets from text files
2.Loads the feature set and renames the colum
3.Loads and adds subject and activity column to both training and test sets
4.Merges the training and the test sets to create one data set using rbind.
5.Extracts only the measurements on the mean and standard deviation for each measurement.
6.Uses the full activity names to name the activities in the data set
7.Replaces the abbrivations with the full name in column names of the data set.
8.Groups the data set by activity and subject, takes the average of each variable for each activity and each subject, and saves the results in a tidy data set.
9.Outputs the tidy data set to a txt file.


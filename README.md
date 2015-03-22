#README
This is the readme file for the course project: Getting and Cleaning Data

##Files included in this project directory includes:
* README.md - how the scripts work
* CodeBook.md - code book that describes the variables, the data, and any transformations performed to clean up the data 
* run_analysis.R - script for performing analysis (details below)
* tidy_data.txt - tidy data set output from run_analysis.R

The R script called run_analysis.R does the following:
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set.
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##How to run the script:
1.Download the data from: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
More information about the data can be found on: "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
2.Extract the archive into the working directory for R; sub-folder "UCI HAR Dataset" will be created.
3.Run the script run_analysis.R using RStudio.
4.An output file tidy_data.txt will be generated in the same directory as run_analysis.R.
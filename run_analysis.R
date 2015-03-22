#Sets data directory
path_data <- file.path("UCI HAR Dataset")
##files <- list.files(path_data, recursive=TRUE)
##files

#0.Reads data files

activity_train <- read.table(file.path(path_data, "train", "Y_train.txt"), header = FALSE)
activity_test <- read.table(file.path(path_data, "test", "Y_test.txt"), header = FALSE)

subject_train <- read.table(file.path(path_data, "train", "subject_train.txt"), header = FALSE)
subject_test <- read.table(file.path(path_data, "test", "subject_test.txt"), header = FALSE)

features_train <- read.table(file.path(path_data, "train", "X_train.txt"), header = FALSE)
features_test <- read.table(file.path(path_data, "test", "X_test.txt"), header = FALSE)


#1.Merges the training and the test sets to create one data set.

data_subject <- rbind(subject_train, subject_test)
data_activity <- rbind(activity_train, activity_test)
data_features <- rbind(features_train, features_test)

names(data_subject) <- c("subject")
names(data_activity) <- c("activity")

features_name <- read.table(file.path(path_data, "features.txt"), header = FALSE)
names(data_features) <- features_name$V2

data_combine <- cbind(data_subject, data_activity)
data_all <- cbind(data_combine, data_features) 


#2.Extracts only the measurements on the mean and standard deviation for each measurement. 

subset_features_name <- features_name$V2[grep("mean\\(\\)|std\\(\\)", features_name$V2)]
subset_data <- subset(data_all, select=c( "subject", "activity", as.character(subset_features_name)))


#3.Uses descriptive activity names to name the activities in the data set

activity_labels = read.table(file.path(path_data, "activity_labels.txt"), header = FALSE)

subset_data$activity <- as.character(subset_data$activity)

for (i in 1:6){
  subset_data$activity[subset_data$activity == i] <- as.character(activity_labels[i,2])
}

subset_data$activity <- as.factor(subset_data$activity)


##head(subset_data$activity, 30)


#4.Appropriately labels the data set with descriptive variable names. 

names(subset_data) <- gsub("^t", "time", names(subset_data))
names(subset_data) <- gsub("^f", "frequency", names(subset_data))
names(subset_data) <- gsub("Acc", "Accelerometer", names(subset_data))
names(subset_data) <- gsub("Gyro", "Gyroscope", names(subset_data))
names(subset_data) <- gsub("Mag", "Magnitude", names(subset_data))
names(subset_data) <- gsub("BodyBody", "Body", names(subset_data))
names(subset_data) <- gsub("mean\\(\\)", "mean", names(subset_data))
names(subset_data) <- gsub("std\\(\\)", "std", names(subset_data))


#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

data_tidy <- aggregate(. ~subject + activity, subset_data, mean)
data_tidy <- data_tidy[order(data_tidy$subject, data_tidy$activity),]
write.table(data_tidy, file="tidy_data.txt", row.names=FALSE)

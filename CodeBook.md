#CodeBook for Getting and Cleaning Data Course Project
This code book describes the data, variables and transformations performed to clean up the data that leads to the preparation of `tidy_data.txt` for later analysis.

#Background
One of the most exciting areas in all of data science right now is wearable computing - see for example [this article] (http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/).  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  The experiments have been video-recorded to label the data manually.  The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

#Dataset Used
This data is obtained from "Human Activity Recognition Using Smartphones Data Set".  The data linked are collected from the accelerometers from the Samsung Galaxy S smartphone.  

A full description is available at the [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The data set used can be downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

##Input Data Set
The following obtained data files are used as input data:
- `X_train.txt`:- Training set.
- `y_train.txt`:- Training labels.
- `subject_train.txt`:- Each row identifies the subject who performed the activity for each window sample.  Its range is from 1 to 30.
- `X_test.txt`:- Test set.
- `y_test.txt`:- Test labels.
- `subject_test.txt`:- Each row identifies the subject who performed the activity for each window sample.  Its range is from 1 to 30.
- `activity_labels.txt`:- Links the class labels with their activity name.
- `features.txt`:- List of all features.

##Transformations
The following transformations were performed on the input dataset:
- `X_train.txt` is read into `features_train`.
- `y_train.txt` is read into `activity_train`.
- `subject_train.txt` is read into `subject_train`.
- `X_test.txt` is read into `features_test`.
- `y_test.txt` is read into `activity_test`.
- `subject_test.txt` is read into `subject_test`.
- `features.txt` is read into `features_name`.
- `activity_labels.txt` is read into `activity_labels`.
- `features_train` and `features_test` are merged to form `data_features`.
- `activity_train` and `activity_test` are merged to form `data_activity`.
- `subject_train` and `subject_test` are merged to form `data_subject`.
- `features_name` is used to set the names of the features in `data_features`.
- `data_features`, `data_activity` and `data_subject` are merged to create `data_all`.
- Indices of columns that contain std or mean, activity and subject are assigned into `subset_features_name` .
- `subset_data` is created using data from columns in `subset_features_name`.
- `activity` column in `subset_data` is updated with descriptive names of activities from `activity_labels`.  `activity` column is then expressed as a factor variable.
- Acronyms in variable names in `subset_data`, like 't', 'f', 'Acc', 'Gyro','Mag', mean() and std() are replaced with descriptive labels such as 'Time', 'Frequency', 'Accelerometer', 'Gyroscpoe', 'Magnitude', mean and std.
- `data_tidy` is created as a set with average for each subject and activity of `subset_data`.  Entries in `data_tidy` are ordered based on subject and activity.
- Finally, the data in `data_tidy` is written into `tidy_data.txt`.

##Output Data Set
The output data `data_tidy` is a tidy data set with the average of each variable for each subject and each activity.
* "subject" 
* "activity" 
* "timeBodyAccelerometer-mean-X" 
* "timeBodyAccelerometer-mean-Y" 
* "timeBodyAccelerometer-mean-Z" 
* "timeBodyAccelerometer-std-X" 
* "timeBodyAccelerometer-std-Y" 
* "timeBodyAccelerometer-std-Z" 
* "timeGravityAccelerometer-mean-X" 
* "timeGravityAccelerometer-mean-Y" 
* "timeGravityAccelerometer-mean-Z" 
* "timeGravityAccelerometer-std-X" 
* "timeGravityAccelerometer-std-Y" 
* "timeGravityAccelerometer-std-Z" 
* "timeBodyAccelerometerJerk-mean-X" 
* "timeBodyAccelerometerJerk-mean-Y" 
* "timeBodyAccelerometerJerk-mean-Z" 
* "timeBodyAccelerometerJerk-std-X" 
* "timeBodyAccelerometerJerk-std-Y" 
* "timeBodyAccelerometerJerk-std-Z" 
* "timeBodyGyroscope-mean-X" 
* "timeBodyGyroscope-mean-Y" 
* "timeBodyGyroscope-mean-Z" 
* "timeBodyGyroscope-std-X" 
* "timeBodyGyroscope-std-Y" 
* "timeBodyGyroscope-std-Z" 
* "timeBodyGyroscopeJerk-mean-X" 
* "timeBodyGyroscopeJerk-mean-Y" 
* "timeBodyGyroscopeJerk-mean-Z" 
* "timeBodyGyroscopeJerk-std-X" 
* "timeBodyGyroscopeJerk-std-Y" 
* "timeBodyGyroscopeJerk-std-Z" 
* "timeBodyAccelerometerMagnitude-mean" 
* "timeBodyAccelerometerMagnitude-std" 
* "timeGravityAccelerometerMagnitude-mean" 
* "timeGravityAccelerometerMagnitude-std" 
* "timeBodyAccelerometerJerkMagnitude-mean" 
* "timeBodyAccelerometerJerkMagnitude-std" 
* "timeBodyGyroscopeMagnitude-mean" 
* "timeBodyGyroscopeMagnitude-std" 
* "timeBodyGyroscopeJerkMagnitude-mean" 
* "timeBodyGyroscopeJerkMagnitude-std" 
* "frequencyBodyAccelerometer-mean-X" 
* "frequencyBodyAccelerometer-mean-Y" 
* "frequencyBodyAccelerometer-mean-Z" 
* "frequencyBodyAccelerometer-std-X" 
* "frequencyBodyAccelerometer-std-Y" 
* "frequencyBodyAccelerometer-std-Z" 
* "frequencyBodyAccelerometerJerk-mean-X" 
* "frequencyBodyAccelerometerJerk-mean-Y" 
* "frequencyBodyAccelerometerJerk-mean-Z" 
* "frequencyBodyAccelerometerJerk-std-X" 
* "frequencyBodyAccelerometerJerk-std-Y" 
* "frequencyBodyAccelerometerJerk-std-Z" 
* "frequencyBodyGyroscope-mean-X" 
* "frequencyBodyGyroscope-mean-Y" 
* "frequencyBodyGyroscope-mean-Z" 
* "frequencyBodyGyroscope-std-X" 
* "frequencyBodyGyroscope-std-Y" 
* "frequencyBodyGyroscope-std-Z" 
* "frequencyBodyAccelerometerMagnitude-mean" 
* "frequencyBodyAccelerometerMagnitude-std" 
* "frequencyBodyAccelerometerJerkMagnitude-mean" 
* "frequencyBodyAccelerometerJerkMagnitude-std" 
* "frequencyBodyGyroscopeMagnitude-mean" 
* "frequencyBodyGyroscopeMagnitude-std" 
* "frequencyBodyGyroscopeJerkMagnitude-mean" 
* "frequencyBodyGyroscopeJerkMagnitude-std"

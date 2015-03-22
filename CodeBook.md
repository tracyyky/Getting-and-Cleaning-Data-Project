#CodeBook for Getting and Cleaning Data Course Project
This Code Book describes the variables used in this project.

##Raw Dataset

###Subject:
Subject ID - volunteers within an age bracket of 19-48 years.

###Activity:
(Each person performed six activities)
* LAYING
* SITTING
* STANDING 
* WALKING 
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

###Using and embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. These are the variables collected:
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

###These are the set of estimations from the variables:
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

###And these are the additional vectors obtained by averaging the signals in a signal window sample (used in angle()):
* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean


##Tidy Dataset
The tidy data set generated shows the average of each variable for each subject and each activity. 
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

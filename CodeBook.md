# CodeBook for Getting and Cleaning Data Course Project
This Code Book describes the variables used in this project.

##Subject:
30 volunteers within an age bracket of 19-48 years.

##Activity:
(Each person performed six activities)
* WALKING 
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING 
* LAYING

Using and embedded accelerometer and gyroscope,
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.
These are the variables collected:
---------------------------------
-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag

These are the set of estimations from the variables:
---------------------------------------------------
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

And these are the additional vectors obtained by averaging the signals in a signal window sample:
------------------------------------------------------------------------------------------------
(used in angle())
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The tidy data set generated shows the average of each variable for each activity and each subject.
Sub-grouped under: subject, activity
------------------------------------
"tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
"tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
"tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
"tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"           
"tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
"tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
"tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
"tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
"tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
"tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"             
"tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
"tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
"tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
"tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
"tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
"tBodyAccMag-mean()"              "tBodyAccMag-std()"              
"tGravityAccMag-mean()"           "tGravityAccMag-std()"           
"tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
"tBodyGyroMag-mean()"             "tBodyGyroMag-std()"             
"tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
"fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
"fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"               
"fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
"fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
"fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
"fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
"fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
"fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"      
"fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
"fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
"fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
"fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
"fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
"fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"             
"fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
"fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
"fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
"fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
"fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
"fBodyBodyGyroJerkMag-meanFreq()"

-----------------------end--------------------------

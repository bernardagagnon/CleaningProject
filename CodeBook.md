Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency


The complete list of variables of each feature vector is the following:

 Variable  | Description 
 --------- | ----------- 
 subject   | the id of the person being monitored, an integer from 1 to 30|
activity|the activity of the subject, one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING



tBodyAcc_mean_X		mean body acceleration, in multiple of "g", along X axis
tBodyAcc_mean_Y		mean body acceleration, in multiple of "g", along Y axis     
tBodyAcc_mean_Z		mean body acceleration, in multiple of "g", along Z axis
tBodyAcc_std_X		standard deviation of body acceleration, in multiple of "g", along X axis
tBodyAcc_std_Y		standard deviation of body acceleration, in multiple of "g", along Y axis
tBodyAcc_std_Z		standard deviation of body acceleration, in multiple of "g", along Z axis
tGravityAcc_mean_X	mean gravity acceleration, in multiple of "g", along X axis
tGravityAcc_mean_Y	mean gravity acceleration, in multiple of "g", along Y axis
tGravityAcc_mean_Z	mean gravity acceleration, in multiple of "g", along Z axis
tGravityAcc_std_X	standard deviation of gravity acceleration, in multiple of "g", along X axis
tGravityAcc_std_Y	standard deviation of gravity acceleration, in multiple of "g", along Y axis
tGravityAcc_std_Z	standard deviation of gravity acceleration, in multiple of "g", along Z axis
tBodyAccJerk_mean_X	mean body acceleration derivative, in multiple of "g" per second, along X axis
tBodyAccJerk_mean_Y	mean body acceleration derivative, in multiple of "g" per second, along Y axis
tBodyAccJerk_mean_Z	mean body acceleration derivative, in multiple of "g" per second, along Z axis
tBodyAccJerk_std_X	standard deviation of body acceleration derivative, in multiple of "g" per second, along X axis
tBodyAccJerk_std_Y	standard deviation of body acceleration derivative, in multiple of "g" per second, along Y axis
tBodyAccJerk_std_Z	standard deviation of body acceleration derivative, in multiple of "g" per second, along Z axis
tBodyGyro_mean_X	mean body angular velocity, in rad/sec, along X axis
tBodyGyro_mean_Y	mean body angular velocity, in rad/sec, along Y axis
tBodyGyro_mean_Z	mean body angular velocity, in rad/sec, along Z axis
tBodyGyro_std_X		standard deviation of body angular velocity, in rad/sec, along X axis
tBodyGyro_std_Y		standard deviation of body angular velocity, in rad/sec, along Y axis
tBodyGyro_std_Z		standard deviation of body angular velocity, in rad/sec, along Z axis
tBodyGyroJerk_mean_X	mean of body angular velocity derivative, in rad/sec2, along X axis
tBodyGyroJerk_mean_Y	mean of body angular velocity derivative, in rad/sec2, along Y axis
tBodyGyroJerk_mean_Z	mean of body angular velocity derivative, in rad/sec2, along Z axis
tBodyGyroJerk_std_X		standard deviation of body angular velocity derivative, in rad/sec2, along X axis
tBodyGyroJerk_std_Y		standard deviation of body angular velocity derivative, in rad/sec2, along Y axis
tBodyGyroJerk_std_Z		standard deviation of body angular velocity derivative, in rad/sec2, along Z axis
tBodyAccMag_mean		mean body acceleration magnitude, in multiple of "g"
tBodyAccMag_std			standard deviation of body acceleration magnitude, in multiple of "g"
tGravityAccMag_mean		mean gravity acceleration magnitude, in multiple of "g"
tGravityAccMag_std		standard deviation of gravity acceleration magnitude, in multiple of "g"
tBodyAccJerkMag_mean	mean gravity acceleration derivative magnitude, in multiple of "g"/sec
tBodyAccJerkMag_std		standard deviation of gravity acceleration derivative magnitude, in multiple of "g"/sec
tBodyGyroMag_mean		mean body angular velocity magnitude, in rad/sec
tBodyGyroMag_std		standard deviation of body angular velocity magnitude, in rad/sec
tBodyGyroJerkMag_mean	mean body angular velocity derivative magnitude, in rad/sec2
tBodyGyroJerkMag_std	standard deviation of body angular velocity derivative magnitude, in rad/sec2
fBodyAcc_mean_X			mean of FFT coefficients for body acceleration along X axis
fBodyAcc_mean_Y			mean of FFT coefficients for body acceleration along Y axis
fBodyAcc_mean_Z			mean of FFT coefficients for body acceleration along Z axis
fBodyAcc_std_X			standard deviation of FFT coefficients for body acceleration along X axis
fBodyAcc_std_Y			standard deviation of FFT coefficients for body acceleration along Y axis
fBodyAcc_std_Z			standard deviation of FFT coefficients for body acceleration along Z axis
fBodyAcc_meanFreq_X		Weighted average of the frequency components for body acceleration along X axis
fBodyAcc_meanFreq_Y		Weighted average of the frequency components for body acceleration along Y axis
fBodyAcc_meanFreq_Z		Weighted average of the frequency components for body acceleration along Z axis
fBodyAccJerk_mean_X		mean of FFT coefficients for body acceleration derivative along X axis
fBodyAccJerk_mean_Y		mean of FFT coefficients for body acceleration derivative along Y axis
fBodyAccJerk_mean_Z		mean of FFT coefficients for body acceleration derivative along Z axis
fBodyAccJerk_std_X		standard deviation of FFT coefficients for body acceleration derivative along X axis
fBodyAccJerk_std_Y		standard deviation of FFT coefficients for body acceleration derivative along Y axis
fBodyAccJerk_std_Z		standard deviation of FFT coefficients for body acceleration derivative along Z axis
fBodyAccJerk_meanFreq_X	Weighted average of the frequency components for body acceleration derivative along X axis
fBodyAccJerk_meanFreq_Y	Weighted average of the frequency components for body acceleration derivative along Y axis
fBodyAccJerk_meanFreq_Z	Weighted average of the frequency components for body acceleration derivative along Z axis
fBodyGyro_mean_X		mean of FFT coefficients for body angular velocity along X axis
fBodyGyro_mean_Y		mean of FFT coefficients for body angular velocity along Y axis
fBodyGyro_mean_Z		mean of FFT coefficients for body angular velocity along Z axis
fBodyGyro_std_X			standard deviation of FFT coefficients for body angular velocity along X axis
fBodyGyro_std_Y			standard deviation of FFT coefficients for body angular velocity along Y axis
fBodyGyro_std_Z			standard deviation of FFT coefficients for body angular velocity along Z axis
fBodyGyro_meanFreq_X	Weighted average of the frequency components for body angular velocity along X axis
fBodyGyro_meanFreq_Y	Weighted average of the frequency components for body angular velocity along Y axis
fBodyGyro_meanFreq_Z	Weighted average of the frequency components for body angular velocity along Z axis
fBodyAccMag_mean		mean of FFT coefficients for body acceleration magnitude
fBodyAccMag_std			standard deviation of FFT coefficients for body acceleration magnitude
fBodyAccMag_meanFreq	Weighted average of the frequency components for ody acceleration magnitude
fBodyAccJerkMag_mean	mean of FFT coefficients for body acceleration derivative magnitude
fBodyAccJerkMag_std		standard deviation of FFT coefficients for body acceleration derivative magnitude
fBodyAccJerkMag_meanFreq	Weighted average of the frequency components for body acceleration derivative magnitude
fBodyGyroMag_mean		mean of FFT coefficients for body angular velocity magnitude
fBodyGyroMag_std		standard deviation of FFT coefficients for body angular velocity magnitude
fBodyGyroMag_meanFreq	Weighted average of the frequency components for body angular velocity magnitude
fBodyGyroJerkMag_mean	mean of FFT coefficients for body angular velocity derivative magnitude
fBodyGyroJerkMag_std	standard deviation of FFT coefficients for body angular velocity derivativ magnitude
fBodyGyroJerkMag_meanFreq	Weighted average of the frequency components for body angular velocity derivative magnitude
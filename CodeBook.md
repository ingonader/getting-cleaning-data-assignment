Codebook for uci-har-dataset-clean-mean.csv
===

This file contains the description of variables in the file `uci-har-dataset-clean-mean.csv`.

Description of variables
---

**subject** -- Number (1-30) of subject that performed the activity.

**sample** -- Sample (train/test) that the data entry originally was assigned to.

**activity** -- Activity that was performed. Can be:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING


**tbodyacc.mean.x**, **tbodyacc.mean.y**, **tbodyacc.mean.z**  -- Body acceleration signal in X, Y, and Z directions (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodyacc.std.x**, **tbodyacc.std.y**, **tbodyacc.std.z**  -- Body acceleration signal in X, Y, and Z directions (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tgravityacc.mean.x**, **tgravityacc.mean.y**, **tgravityacc.mean.z** -- Gravity acceleration signal in X, Y, and Z directions (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tgravityacc.std.x**, **tgravityacc.std.y**, **tgravityacc.std.z** -- Gravity acceleration signal in X, Y, and Z directions (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodyaccjerk.mean.x**, **tbodyaccjerk.mean.y**, **tbodyaccjerk.mean.z** -- Body jerk signal (derivation of body linear acceleration) in X, Y, and Z directions (mean of of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodyaccjerk.std.x**, **tbodyaccjerk.std.y**, **tbodyaccjerk.std.z** -- Body jerk signal (derivation of body linear acceleration) in X, Y, and Z directions (standard deviation of of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodygyro.mean.x**, **tbodygyro.mean.y**, **tbodygyro.mean.z** -- Angular body acceleration in X, Y, and Z directions (mean of of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodygyro.std.x**, **tbodygyro.std.y**, **tbodygyro.std.z** -- Angular body acceleration in X, Y, and Z directions (standard deviation of of time series for each time the activity was performed), mean value over all activities by subject and activity type


**tbodygyrojerk.mean.x**, **tbodygyrov.mean.y**, **tbodygyrojerk.mean.z** -- Angular body jerk signal (derivation of body angular velocity) in X, Y, and Z directions (mean of of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodygyrojerk.std.x**, **tbodygyrojerk.std.y**, **tbodygyrojerk.std.z** -- Angular body jerk signal (derivation of body angular velocity) in X, Y, and Z directions (standard deviation of of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodyaccmag.mean** -- magnitude of three-dimensional signal of body acceleration, calculated using the Euclidean norm (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodyaccmag.std** -- magnitude of three-dimensional signal of body acceleration, calculated using the Euclidean norm (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tgravityaccmag.mean** -- magnitude of three-dimensional signal of gravity acceleration, calculated using the Euclidean norm (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tgravityaccmag.std** -- magnitude of three-dimensional signal of gravity acceleration, calculated using the Euclidean norm (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodyaccjerkmag.mean** -- magnitude of three-dimensional signal of body acceleration jerk, calculated using the Euclidean norm (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodyaccjerkmag.std** -- magnitude of three-dimensional signal of body acceleration jerk, calculated using the Euclidean norm (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type


**tbodygyromag.mean** -- magnitude of three-dimensional signal of angular body acceleration, calculated using the Euclidean norm (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodygyromag.std** -- magnitude of three-dimensional signal of angular body acceleration, calculated using the Euclidean norm (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type


**tbodygyrojerkmag.mean** -- magnitude of three-dimensional signal of angular body acceleration jerk signal, calculated using the Euclidean norm (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**tbodygyrojerkmag.std** -- magnitude of three-dimensional signal of angular body acceleration jerk signal, calculated using the Euclidean norm (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type


**fbodyacc.mean.x**, **fbodyacc.mean.y**, **fbodyacc.mean.z** -- Fast Fourier Transform (FFT) of tbodyacc.mean.x, tbodyacc.mean.y, tbodyacc.mean.z (mean/standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodyacc.std.x**, **fbodyacc.std.y**, **fbodyacc.std.z** -- Fast Fourier Transform (FFT) of tbodyacc.std.x, tbodyacc.std.y, tbodyacc.std.z (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type


**fbodyacc.meanfreq.x**, **fbodyacc.meanfreq.y**, **fbodyacc.meanfreq.z** -- Fast Fourier Transform (FFT) of fbodyacc.mean.x, fbodyacc.mean.y, fbodyacc.mean.z (weighted average of the frequency components of the time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodyaccjerk.mean.x**, **fbodyaccjerk.mean.y**, **fbodyaccjerk.mean.z** -- Fast Fourier Transform (FFT) of tbodyaccjerk.mean.x, tbodyaccjerk.mean.y, tbodyaccjerk.mean.z (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodyaccjerk.std.x**, **fbodyaccjerk.std.y**, **fbodyaccjerk.std.z** -- Fast Fourier Transform (FFT) of tbodyaccjerk.std.x, tbodyaccjerk.std.y, tbodyaccjerk.std.z (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodyaccjerk.meanfreq.x**, **fbodyaccjerk.meanfreq.y**, **fbodyaccjerk.meanfreq.z** -- Fast Fourier Transform (FFT) of tbodyaccjerk.mean.x, tbodyaccjerk.mean.y, tbodyaccjerk.mean.z (weighted average of the frequency components of the time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodygyro.mean.x**, **fbodygyro.mean.y**, **fbodygyro.mean.z** -- Fast Fourier Transform (FFT) of tbodygyro.mean.x, tbodygyro.mean.y, tbodygyro.mean.z (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodygyro.std.x**, **fbodygyro.std.y**, **fbodygyro.std.z** -- Fast Fourier Transform (FFT) of tbodygyro.std.x, tbodygyro.std.y, tbodygyro.std.z (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodygyro.meanfreq.x**, **fbodygyro.meanfreq.y**, **fbodygyro.meanfreq.z** -- Fast Fourier Transform (FFT) of tbodygyrojerk.mean.x, tbodygyrojerk.mean.y, tbodygyrojerk.mean.z (weighted average of the frequency components of the time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodyaccmag.mean** -- Fast Fourier Transform (FFT) of tbodyaccmag.mean (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodyaccmag.std** -- Fast Fourier Transform (FFT) of tbodyaccmag.std (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodyaccmag.meanfreq** -- Fast Fourier Transform (FFT) of tbodyaccmag.meanfreq (weighted average of frequency components of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodyaccjerkmag.mean** -- Fast Fourier Transform (FFT) of tbodybodyaccjerkmag.mean (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodyaccjerkmag.std** -- Fast Fourier Transform (FFT) of tbodybodyaccjerkmag.std (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodyaccjerkmag.meanfreq** -- Fast Fourier Transform (FFT) of tbodybodyaccjerkmag.meanfreq (weighted average of frequency components of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodygyromag.mean** -- Fast Fourier Transform (FFT) of tbodybodygyromag.mean (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodygyromag.std** -- Fast Fourier Transform (FFT) of tbodybodygyromag.std (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodygyromag.meanfreq** -- Fast Fourier Transform (FFT) of tbodybodygyromag.meanfreq (weighted average of frequency components of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodygyrojerkmag.mean** -- Fast Fourier Transform (FFT) of tbodybodygyrojerkmag.mean (mean of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodygyrojerkmag.std** -- Fast Fourier Transform (FFT) of tbodybodygyrojerkmag.std (standard deviation of time series for each time the activity was performed), mean value over all activities by subject and activity type

**fbodybodygyrojerkmag.meanfreq** -- Fast Fourier Transform (FFT) of tbodybodygyrojerkmag.meanfreq (weighted average of frequency components of time series for each time the activity was performed), mean value over all activities by subject and activity type


Description of original variables
-----

The rest of the .csv file contains parts of the description of the variables that the current data set originated from. The original dataset is available at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and the project homepage is [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The rest of this file was authored by (copied from): 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto; 
Smartlab - Non Linear Complex Systems Laboratory; 
DITEN - Università degli Studi di Genova;
Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws; www.smartlab.ws

### Notes

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency (for some of the components)


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

### General description of the experiment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 



### License

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


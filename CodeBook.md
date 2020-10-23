Code Book
=========

The data set *humanact_reduced.txt* contains an aggregated and reduced version of the data sets provided by the *Human Activity Recognition* project. As the researchers describe it, the experiments in this project were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

The *humanact_reduced.txt* data set aggregates the data from the *test group* and the *train group* for each of the six activities. The original data sets contained more than one measurment per subject and activity. The *humanact_reduced.txt* data set reduces this information by reporting the average measurment per subject and activity.   

All the  variables in the dataset and the information about them were obtained from the *Human Activity Recognition database*. A full description of the project and the raw data set can be obtained at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

========================
Identification Variables 
========================

Two variables are considered *identification variables*:  

- subject: identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  
- activities: a factor identifying the type of activity observed. Its range is from 1 to 6, and their values are:   
1 WALKING  
2 WALKING_UPSTAIRS  
3 WALKING_DOWNSTAIRS  
4 SITTING  
5 STANDING  
6 LAYING  

=================
Feature Variables 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  

timeBodyAcc-XYZ  
timeGravityAcc-XYZ  
timeBodyAccJerk-XYZ  
timeBodyGyro-XYZ  
timeBodyGyroJerk-XYZ  
timeBodyAccMag  
timeGravityAccMag  
timeBodyAccJerkMag  
timeBodyGyroMag  
timeBodyGyroJerkMag  
freqBodyAcc-XYZ  
freqBodyAccJerk-XYZ  
freqBodyGyro-XYZ  
freqBodyAccMag  
freqBodyAccJerkMag  
freqBodyGyroMag  
freqBodyGyroJerkMag  

The set of variables that were estimated from these signals are:   

mean: Mean value  
std: Standard deviation  
meanFreq: Weighted average of the frequency components to obtain a mean frequency  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the 'angle' variable:  

gravityMean  
timeBodyAccMean  
timeBodyAccJerkMean  
timeBodyGyroMean  
timeBodyGyroJerkMean  

===========================
Complete list of variables
===========================

subject                          
activities                       
timeBodyAcc.mean.X              
timeBodyAcc.mean.Y               
timeBodyAcc.mean.Z               
timeGravityAcc.mean.X           
timeGravityAcc.mean.Y            
timeGravityAcc.mean.Z            
timeBodyAccJerk.mean.X          
timeBodyAccJerk.mean.Y           
timeBodyAccJerk.mean.Z           
timeBodyGyro.mean.X             
timeBodyGyro.mean.Y              
timeBodyGyro.mean.Z              
timeBodyGyroJerk.mean.X         
timeBodyGyroJerk.mean.Y          
timeBodyGyroJerk.mean.Z         
timeBodyAccMag.mean             
timeGravityAccMag.mean           
timeBodyAccJerkMag.mean          
timeBodyGyroMag.mean            
timeBodyGyroJerkMag.mean         
freqBodyAcc.mean.X               
freqBodyAcc.mean.Y              
freqBodyAcc.mean.Z               
freqBodyAcc.meanFreq.X           
freqBodyAcc.meanFreq.Y          
freqBodyAcc.meanFreq.Z           
freqBodyAccJerk.mean.X           
freqBodyAccJerk.mean.Y          
freqBodyAccJerk.mean.Z           
freqBodyAccJerk.meanFreq.X       
freqBodyAccJerk.meanFreq.Y      
freqBodyAccJerk.meanFreq.Z       
freqBodyGyro.mean.X              
freqBodyGyro.mean.Y             
freqBodyGyro.mean.Z              
freqBodyGyro.meanFreq.X          
freqBodyGyro.meanFreq.Y         
freqBodyGyro.meanFreq.Z          
freqBodyAccMag.mean              
freqBodyAccMag.meanFreq         
freqBodyBodyAccJerkMag.mean      
freqBodyBodyAccJerkMag.meanFreq  
freqBodyBodyGyroMag.mean        
freqBodyBodyGyroMag.meanFreq     
freqBodyBodyGyroJerkMag.mean     
freqBodyBodyGyroJerkMag.meanFreq
timeBodyAcc.std.X                
timeBodyAcc.std.Y                
timeBodyAcc.std.Z               
timeGravityAcc.std.X             
timeGravityAcc.std.Y             
timeGravityAcc.std.Z            
timeBodyAccJerk.std.X            
timeBodyAccJerk.std.Y            
timeBodyAccJerk.std.Z           
timeBodyGyro.std.X               
timeBodyGyro.std.Y               
timeBodyGyro.std.Z              
timeBodyGyroJerk.std.X           
timeBodyGyroJerk.std.Y           
timeBodyGyroJerk.std.Z          
timeBodyAccMag.std               
timeGravityAccMag.std            
timeBodyAccJerkMag.std          
timeBodyGyroMag.std             
timeBodyGyroJerkMag.std          
freqBodyAcc.std.X               
freqBodyAcc.std.Y                
freqBodyAcc.std.Z                
freqBodyAccJerk.std.X           
freqBodyAccJerk.std.Y            
freqBodyAccJerk.std.Z            
freqBodyGyro.std.X              
freqBodyGyro.std.Y               
freqBodyGyro.std.Z               
freqBodyAccMag.std              
freqBodyBodyAccJerkMag.std       
freqBodyBodyGyroMag.std          
freqBodyBodyGyroJerkMag.std 

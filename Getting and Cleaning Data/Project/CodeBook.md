Getting and Cleaning Data Project

Data Source:

Human Activity Recognition Using Smartphones Data Set at UCI Machine Learning Repository is used for this project. The data set is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute or Variable Information:

For each record in the dataset it is provided: 
1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
2. Triaxial Angular velocity from the gyroscope. 
3. A 561-feature vector with time and frequency domain variables. 
4. Its activity label. 
5. An identifier of the subject who carried out the experiment.

Transformations performed on the data set:

1. Uses descriptive activity names to name the activities in the data set

activityLabels are assigned using actvities_labels.txt and classLabels and activityName as used as column names.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

features are labeled using features.txt. Mean and Standard Deviation identified and assigned to featuresWanted. The     required measurements are then extracted.

3. Merge the training and the test sets to create one data set.

Training data set (trainSubjects, trainActivities, train) is first loaded and assigned to train. Test data set (testSubjects, testActivities, test) is then loaded and assigned to test. train and test are then merged and assigned to combined.

4. Appropriately labels the data set with descriptive variable names.

"Activity" and "SubjectNum" variable names are assigned the combined data set.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Average of Activity and SubjectNum for each variable is created in combined data set. fwrite is used to create "tidyData.txt" from the combined data set.

# Getting-and-Cleaning-Data_Peer-Evaluation
This is my submission for the Peer evaluation at the end of Week 4 of "Getting and Cleaning Data"

We were given two URLs.
One gives a description of the data: (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
and one had the data we needed for the project: (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The data consisted of a number of txt documents:
     -'README.txt' which was the original README doc that was written by those who ran the experiements. It contains
        -a description of the experiment
        -the information obtained through the experiment
        -and explanation of all attachments
        -notes and
        -license information (see below)
    - 'features_info.txt': Shows information about the variables used on the feature vector.
    - 'features.txt': List of all features.
    - 'activity_labels.txt': Links the class labels with their activity name.
    - 'train/X_train.txt': Training set.
    - 'train/y_train.txt': Training labels.
    - 'test/X_test.txt': Test set.
    - 'test/y_test.txt': Test labels.
    - 'train/subject_train.txt': Identifies the participants

For the project, we had to
    -create one data set using six data sets,
    -provided descriptive activity names using the provided file (features.txt),
    -label them using the provided file (activity_lables.txt),
    -extract only the measurements on the mean and standard deviation for each measurement,
    -create a new tidy data set with the average of each variable for each activity and each subject and then
    -writing that final data set into a txt file.

* * *
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

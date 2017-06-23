# Getting and Cleaning Data Project

The script Rtidydata.R executes the step defined in the project assignment:

1. Read files and create test data sets

Xtest    - set of test data which represent all measurements from all subjects

Ytest    - set of test data which represent activities that subjects performed

SubTest  - set of subjects 


2. Read train data and create train data sets:

Xtrain

Ytrain

Subtrain

3. Merge test and training data sets and create new data sets:

Xsum

Ysum

Subsum

4. Columns in the resulting data sets are not labeled so in this step we give them meaningfull names: 

For Subject and Activity data sets we assign values -> subject and activities respectively.

For X data set, we read column names from "features.txt" file.

5. From X data set we only take mean and standard measurements 

6. Give all activities in data set Y meaningfull names which are read from "activity_labels.txt" file

7. Merge all data sets into one - allData

8. Create independent data set with the average of each variable for each activity and each subject  - aggData





library(dplyr)

# read test data
Xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
Ytest<-read.table("./UCI HAR Dataset/test/Y_test.txt")
SubTest<-read.table("./UCI HAR Dataset/test/subject_test.txt")

# read train data
Xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
Ytrain<-read.table("./UCI HAR Dataset/train/Y_train.txt")
SubTrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")

# merge test and trainign data sets (append rows)
Xsum<-rbind(Xtest, Xtrain)
Ysum<-rbind(Ytest, Ytrain)
SubSum<-rbind(SubTest, SubTrain)

# name columns
names(SubSum)<-c("subject")
names(Ysum)<-c("activity")
Xnames<-read.table("./UCI HAR Dataset/features.txt", head = FALSE)
names(Xsum)<-Xnames$V2

# take only mean and std measurements from the features set
features<-read.table("./UCI HAR Dataset/features.txt")
mean_std <- grep("-(mean|std)\\(\\)", features[, 2])
Xsum<-Xsum[, mean_std]

# assign meaningfull names to activities
activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
Ysum[,1]<- activities[Ysum[, 1], 2]

# merge all data sets (append columns)
Data<-cbind(Xsum, Ysum)
allData<-cbind(Data, SubSum)

# data set with the average of each variable for each activity and each subject.
aggData<-aggregate(. ~subject + activity, allData, mean)
write.table(allData, file = "./UCI HAR Dataset/assignment/tidydata.txt",row.name=FALSE)
write.table(aggData, file = "./UCI HAR Dataset/assignment/aggtidydata.txt",row.name=FALSE)



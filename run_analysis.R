#Peer Assessments /Getting and Cleaning Data Course Project

# Getting the data

if (!file.exists("data")){
  dir.create("data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "getdata-projectfiles-UCI-HAR-Dataset.zip", mode="wb")
dateDownloaded <- date()

# Decompress the file

unzip(zipfile="getdata-projectfiles-UCI-HAR-Dataset.zip",exdir="data")

# Reading the Train set

xTrain = read.table('./data/UCI HAR Dataset/train/X_train.txt',header=FALSE);
yTrain = read.table('./data/UCI HAR Dataset/train/y_train.txt',header=FALSE);
sTrain = read.table('./data/UCI HAR Dataset/train/subject_train.txt',header=FALSE);

# Setting the columns names of the Train set

colnames(xTrain) = read.table('./data/UCI HAR Dataset/features.txt',header=FALSE)[,2]
colnames(yTrain) = "activity"
colnames(sTrain) = "subject"

# Merging the Train set

train <- cbind(xTrain,yTrain,sTrain)

# Reading the Test set

xTest = read.table('./data/UCI HAR Dataset/test/X_test.txt',header=FALSE);
yTest = read.table('./data/UCI HAR Dataset/test/y_test.txt',header=FALSE);
sTest = read.table('./data/UCI HAR Dataset/test/subject_test.txt',header=FALSE);

# Setting the columns names of the Test set

colnames(xTest) = colnames(xTrain)
colnames(yTest) = "activity"
colnames(sTest) = "subject"

# Merging the Test set

test <- cbind(xTest,yTest,sTest)

#
# 1. Merges the training and the test sets to create one data set.
#

merge <- rbind(train,test)

#
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
#

merge <- cbind(merge[,grep("mean\\(",colnames(merge))],merge[,grep("std\\(",colnames(merge))],merge[,colnames(merge)[colnames(merge)=='activity' | colnames(merge)=="subject"]])

#
# 3. Uses descriptive activity names to name the activities in the data set
#

# Reading the Activity labels

activity_labs <- read.table('./data/UCI HAR Dataset/activity_labels.txt',header=FALSE)

# Setting the Activity labels with descriptive activity names

merge[,"activity"]<-activity_labs[merge[,"activity"],2]

#
# 4. Appropriately labels the data set with descriptive activity names
#

# terms.txt file contain a list of terms and your substitute more descriptive

terms <- read.table('./terms.txt',sep = ",",header=TRUE);

# subs function replaces a term in the column name by your substitute

subs <- function (x,terms){  
  for (i in 1:nrow(terms))
  {
    x<-gsub(terms[i,1],terms[i,2],x,fixed=TRUE)
  }
  x
}

# Replacing terms in all columns

colnames(merge) = lapply(colnames(merge),subs,terms)

#
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
#

# Installing and loading package reshape2

library(reshape2)

# Melting the data frame

mlt <- melt(merge,id=c("subject","activity"),measure.vars=colnames(merge)[colnames(merge)!='activity' & colnames(merge)!="subject"])

# Creating the independent tidy data

dc <- dcast(mlt,subject+activity~variable,mean)

# Creating the tidyData.csv file

write.csv(dc,"./tidyData.csv",row.names=FALSE)
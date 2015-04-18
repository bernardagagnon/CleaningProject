# run_analysis.R



mergeTrainingAndTest <- function () {
  if (!file.exists("train") | !file.exists("test")) {
    stop ("Running from wrong working directory")
  }
  rawData <- read.table ("train/X_train.txt",header=F,colClasses="numeric")

  rbind(rawData,read.table("test/X_test.txt",header=F,colClasses="numeric"))
}

readFeatureNames <- function () {
  features <- read.table("features.txt",header=F,colClasses=c("integer","character"),
                          col.names=c("column","name"))
  
  # filter by those that have "mean" or "std"
  features <- features[grepl("mean|std",features$name),]
  
  # make the feature names legal in R
  # remove (), replace - with _ and substitute BodyBody with Body
  features$name <- gsub("\\(\\)","",features$name)
  features$name <- gsub("-","_",features$name)
  features$name <- gsub("BodyBody","Body",features$name)
  
  # rename the column field such that they have the form Vn
  features$column <- paste0("V",features$column)
  features
}

projectFeatures <- function (data,features) {
  
  # keep only the columns in feature$column
  data <- data[,features$column]
  
  # rename the columns to the feature names
  names(data) <- features$name
  data
}

addActivity <- function (data) {
  act <- read.table("train/y_train.txt",header=F)
  act <- rbind(act,read.table("test/y_test.txt",header=F))
  data$activity <- act$V1

  # read the labels
  l <- read.table ("activity_labels.txt",header=F, col.names=c("code","label"))
  
  data$activity <- factor(data$activity,levels=l$code,labels=l$label)
  data
}

addSubject <- function (data) {
  subject <- read.table("train/subject_train.txt",header=F)
  subject <- rbind(subject,read.table("test/subject_test.txt",header=F))
  data$subject <- subject$V1
  data
}


data <- mergeTrainingAndTest()
f <- readFeatureNames()
data <- projectFeatures(data,f)
data <- addActivity(data)

# create the 2nd tidy data set
meanBySubjectAndActivity <- data
meanBySubjectAndActivity <- addSubject(meanBySubjectAndActivity)

# now melt and reshape to compute mean values

library(reshape2)

meanBySubjectAndActivity <- melt(meanBySubjectAndActivity,id.vars=c("activity","subject"))
meanBySubjectAndActivity <- dcast(meanBySubjectAndActivity, subject+activity ~ variable, mean)
write.table(meanBySubjectAndActivity,"meanBySubjectAndActivity.txt",row.names=FALSE,sep=",")


setwd("filePath/UCI HAR Dataset/train")

x_train <- read.table("X_train.txt")
y_train <- read.table("Y_train.txt")
subject_train <- read.table("subject_train.txt")

setwd("filePath/UCI HAR Dataset/test")

x_test <- read.table("X_test.txt")
y_test <- read.table("Y_test.txt")
subject_test <- read.table("subject_test.txt")

setwd("filePath/UCI HAR Dataset")

features <- read.table("features.txt")

activity_Labels <- read.table("activity_labels.txt")

x_total <- rbind(x_train, x_test)
y_total <- rbind(y_train, y_test)
subject_total <- rbind(subject_train, subject_test)

colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"
      
colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"
      
colnames(activity_Labels) <- c('activityId','activityType')

mrg_train <- cbind(y_train, subject_train, x_train)
mrg_test <- cbind(y_test, subject_test, x_test)
finalTable <- rbind(mrg_train, mrg_test)

colNames <- colnames(finalTable)

mean_and_std <- (grepl("activityId" , colNames) | 
                 grepl("subjectId" , colNames) | 
                 grepl("mean.." , colNames) | 
                 grepl("std.." , colNames) 
                 )
setForMeanAndStd <- finalTable[ , mean_and_std == TRUE]     

setWithActivityNames <- merge(setForMeanAndStd, activity_labels,
                  by='activityId',
                  all.x=TRUE)
  
tidyDataSetFinal <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)  
tidyDataSetFinal <- tidyDataSetFinal[order(tidyDataSetFinal$subjectId, tidyDataSetFinal$activityId),]

write.table(tidyDataSetFinal, "tidyDataSetFinal.txt", row.names = FALSE)




## READING SUBJECT DATA
a <- read.table("./test/subject_test.txt")
b <- read.table("./train/subject_train.txt")
subjects <- rbind(a, b)
colnames(subjects) <- "subject"
rm(a, b)

##READING ACTIVITY DATA
c <- read.table("./test/y_test.txt")
d <- read.table("./train/y_train.txt")
activities <- rbind(c, d)
colnames(activities) <- "activity"
rm (c, d)

## READ DATA
e <- read.table("./test/X_test.txt")
f <- read.table("./train/X_train.txt")
pData <- rbind(e, f)
g <- read.table("./features.txt")
colnames(pData) <- g$V2
pData <- cbind(subjects, activities, pData)
rm(e, f, g, subjects, activities)

## search for "-mean" and "-std" and read those rows into new dataset

pData$activity <- as.factor(pData$activity)
pData$subject <- as.factor(pData$subject)
meancols <- grep("mean", colnames(pData))
stdcols <- grep("std", colnames(pData))
dataCols <- sort.int(c(meancols, stdcols))
pData <- pData[c(1, 2, dataCols)]
rm(dataCols, meancols, stdcols)

## create a dataset with 180 rows (1 for each activity for each subject) and 
## 79 columns (one for each mean and std)

tidyData <- data.frame()
for (i in 1:length(levels(pData$subject))) {
        for (j in 1:length(levels(pData$activity))) {
                newRow <- colMeans((pData[(pData$subject == i & pData$activity == j),])[3:81])
                newRow <- c(i, j, newRow)
                tidyData <- rbind(tidyData, newRow)
        }
        tidyData
}
rm(i, j, newRow, pData)

## structure the dataset
colnames(tidyData) <- colnames(pData)
tidyData$subject <- as.factor(tidyData$subject)
tidyData$activity <- as.factor(tidyData$activity)

## rename activity codes to descriptive names
tidyData$activity <- gsub("1", "walking", tidyData$activity)
tidyData$activity <- gsub("2", "walking_upstairs", tidyData$activity)
tidyData$activity <- gsub("3", "walking_downstairs", tidyData$activity)
tidyData$activity <- gsub("4", "sitting", tidyData$activity)
tidyData$activity <- gsub("5", "standing", tidyData$activity)
tidyData$activity <- gsub("6", "laying", tidyData$activity)
tidyData$activity <- as.factor(tidyData$activity)
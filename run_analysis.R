## ############################################################################
## Data Science Curriculum
## Getting and Cleaning Data
## Assignment: Prepare tidy data that can be used for later analysis
## ############################################################################



## ============================================================================
## load packages
## ============================================================================

#rm(list=ls())

library(downloader) ## for download() function
library(gdata) ## trim() function

## ============================================================================
## global variables
## ============================================================================

## define paths to analysis file and data:
path.raw <- "C:/data-sync/coursera/data-scientist-03-getting-and-cleaning-data/assignment/"

## setwd(path.raw)

## [[note]]: working directory needs to be set before running this script,
## in case it is sourced by another R script (otherwise, current working dir
## would be "reset" to the value hard-coded here)

## ============================================================================
## download and unzip data (if necessary)
## ============================================================================

## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
pathname <- "UCI HAR Dataset"

if (!file.exists(pathname)) {
	if (!file.exists(filename)) {
		## download.file(url=url, destfile=filename, method="curl", quiet=FALSE)
		download(url=url, destfile=filename, quiet=FALSE)
	} else {
		message(paste0("File '", filename, "' found, using this file."))
	}
	message(paste0("Unzipping file '", filename, "'..."))
	unzip(zipfile=filename)
	message("Done.")
} else {
	message(paste0("Path '", pathname, "' found, assuming data was already unzipped."))
}

## ============================================================================
## read in single data files
## ============================================================================

## --------------------------------------------------------------------------
## features
## --------------------------------------------------------------------------

## read feature file as text:
txt.feat.all <- readLines(con=paste0("./", pathname, "/features.txt"))

## parse feature names:
dat.feat.all <- sapply(strsplit(txt.feat.all, split=" "), function(i) i[2])

## remove text to save memory, and do garbage collection
rm(txt.feat.all)
gc()

## find features of interest:
## Extracts only the measurements on the mean and standard deviation 
## for each measurement

wch.feat <- grep("mean|std", dat.feat.all)
dat.feat <- dat.feat.all[wch.feat]
#t(t(dat.feat))

## this set also includes:
## "fBodyAcc-meanFreq()-X"  
## "fBodyAcc-meanFreq()-Y"          
## "fBodyAcc-meanFreq()-Z"   
## "fBodyAccJerk-meanFreq()-X"      
## "fBodyAccJerk-meanFreq()-Y"      
## "fBodyAccJerk-meanFreq()-Z"      
## "fBodyGyro-meanFreq()-X"         
## "fBodyGyro-meanFreq()-Y"         
## "fBodyGyro-meanFreq()-Z"         
## "fBodyAccMag-meanFreq()"         
## "fBodyBodyAccJerkMag-meanFreq()" 
## "fBodyBodyGyroMag-meanFreq()"    
## "fBodyBodyGyroJerkMag-meanFreq()"

## --------------------------------------------------------------------------
## activity labels
## --------------------------------------------------------------------------

txt.act <- readLines(con=paste0("./", pathname, "/activity_labels.txt"))

## parse activity names:
dat.act.levels <- as.numeric(sapply(strsplit(txt.act, split=" "), function(i) i[1]))
dat.act.labels <- sapply(strsplit(txt.act, split=" "), function(i) i[2])

## remove text to save memory, and do garbage collection
rm(txt.act)
gc()

## --------------------------------------------------------------------------
## activities of training and testing data
## --------------------------------------------------------------------------

## read in data as text and convert to numeric:
dat.act.train <-trim(readLines(con=paste0("./", pathname, "/train/y_train.txt")))
dat.act.test <- trim(readLines(con=paste0("./", pathname, "/test/y_test.txt")))

## activities:
dat.act <- as.numeric(c(
				dat.act.train,
				dat.act.test))

## make it a factor and assign labels read from activity labels file:
dat.act <- factor(dat.act, levels=dat.act.levels, labels=dat.act.labels)

## make another variable of which dataset (sample) the data came from (train, test):
dat.samp <- rep(c(1, 2), c(length(dat.act.train), length(dat.act.test)))
dat.samp <- factor(dat.samp, levels=c(1, 2), labels=c("train", "test"))

## remove data not needed and do garbage collection:
rm(dat.act.train, dat.act.test)
gc()

## inspect data:
head(dat.act)
length(dat.act)

## --------------------------------------------------------------------------
## subjects of training and testing data
## --------------------------------------------------------------------------

## read in data as text and convert to numeric:
dat.subj <- as.numeric(c(
				trim(readLines(con=paste0("./", pathname, "/train/subject_train.txt"))),
				trim(readLines(con=paste0("./", pathname, "/test/subject_test.txt")))))

## inspect data:
head(dat.subj)
length(dat.subj)

## --------------------------------------------------------------------------
## measurements of training and testing data
## --------------------------------------------------------------------------

## read in data as text (more memory efficient than read.fwf):
txt.x <- c(
		trim(readLines(con=paste0("./", pathname, "/train/X_train.txt"))),
		trim(readLines(con=paste0("./", pathname, "/test/X_test.txt"))))

## split text at a variable number of spaces:
dat.x.t <- sapply(strsplit(txt.x, split="[[:space:]]+"), function(i) as.numeric(i[wch.feat]))
#head(dat.x.t)
#dim(dat.x.t)

## returns a matrix of 79 (measurements) x 10299 (activities),
## but we need to transpose and make it a data frame:
dat.x <- as.data.frame(t(dat.x.t))

## [[here]]
## tidy names (replace "-", "(", ")", with ""

## give sanitized variable names:
names.dat.x <- tolower(dat.feat)  ## original feature names, lowercase 
names.dat.x <- gsub("-", "\\.", names.dat.x)
names.dat.x <- gsub("[()]+", "", names.dat.x)
names(dat.x) <- names.dat.x
				
## inspect data:
head(dat.x)
dim(dat.x)

## remove unnecessary variables and do garbage collection:
rm(txt.x, dat.x.t)
gc()

## ============================================================================
## combine data to one data frame
## ============================================================================

dat <- data.frame(
		"subject"=dat.subj, 
		"sample"=dat.samp,
		"activity"=dat.act,
		dat.x)                 ## measurements

head(dat)

## ============================================================================
## write .csv file to disk
## ============================================================================

## [[note]]
## this would be the "first" data set, that is implied (but not really mentioned)
## in the instructions. After some thinking about it, I decided that the result
## of this script should only be one data file, which then would be the "second"
## data set containing only the means. This is written below, so this step is 
## commented out...

## write.csv(dat, "uci-har-dataset-clean.csv")

## ============================================================================
## create a second, independent dataset with means per activity and subject
## ============================================================================

dat.mean <- aggregate(dat[-(1:3)], list("subject"=dat$subject, "sample"=dat$sample, 
				"activity"=dat$activity), mean)

## another implementation of the same using sqldf:
## '''''''''''''''''''''''''''''''''''''''''''''''
## library(sqldf)
## 
## ## adjust names, because sqldf can't handle ".":
## sqlnames <- gsub("\\.", "_", names(dat))  
## 
## ## build query:
## sqlquery <- paste0('select subject, sample, activity, ',
##         paste0('avg(', sqlnames[4:ncol(dat)], ')', collapse=', '),
##         'from dat ',
##         'group by subject, activity')
## 
## ## execute query:
## dat.mean <- sqldf(sqlquery)
## 
## ## re-adjust names back to original:
## names(dat.mean)[-(1:3)] <- names(dat)[-(1:3)]

## ============================================================================
## write "second" .csv file to disk
## ============================================================================

write.csv(dat.mean, "uci-har-dataset-clean-mean.csv")

## ============================================================================
## additional code for generating codebook
## ============================================================================

## NOT RUN:

#cat(paste0("**", names(dat), "** -- of time series for each time the activity was performed), mean value over all activities by subject and activity type"), "\n", sep="\n\n")
#cat(paste0("* ", names(dat), ""), "\n", sep="\n")
#cat(paste0("* ", levels(dat$activity)), "\n", sep="\n" )


Getting and cleaning data: Assignment 1
======================================

This file contains the list and description of files for **Assignment 1**
of the Coursera course 'Getting and Cleaning Data' by Jeff Leek.


Description of files
------------------

**README.md** -- This file.

**run_analysis.R** -- R script file that:

* downloads the data from the Internet (if it not already was downloaded)
* unzips the downloaded zip file (if it has not already been unzipped)
* reads the single data files in that archive and
* combines them to prepare one tidy dataset (in variable `dat.mean`)
* exports this dataset as a .csv file (see below)

    Of note: before running this script, the working directory needs to be set with the `setwd()`command in `R`. The data will be looked for / downloaded to this working directory.

**uci-har-dataset-clean-mean.csv** -- the tidy dataset containing the aggregated values of the measurements, prepared by the `run_analysis.R` file. It contains mean values of all mean- and standard-devation-measurements by subject and by activity.

**CodeBook.md** -- description of variables in the dataset above (code book).




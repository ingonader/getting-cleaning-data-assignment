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
* combines them to prepare one tidy dataset (in variable `dat`)
* exports this dataset as a .csv file (see below)

**uci-har-dataset-clean.csv** -- the tidy dataset that originated from the downloaded files and was prepared by the `run_analysis.R` file.

**uci-har-dataset-clean-mean.csv** -- aggregated version of the tidy dataset above, also prepared by the `run_analysis.R` file. It contains mean values of all measurements by subject and by activity.

**CodeBook.md** -- description of variables in the datasets above (code book).




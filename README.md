# README

The script named "run_analysis.R" uses data from the Human Activity Recognition using Smartphone data set experiment described [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data can be downloaded at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Running the script

To run the script, you need to set the R working directory to the "UCI HAR Dataset" directory and then run it.
The script will write a file called text2.txt that contains the variables described in CodeBook.md

## Processing performed by the script

The script performs the following steps:

1. Merges the data in "train/X_train.txt" and "test/X_test.txt" in a single data frame called `data`
2. Reads the names of the features from "features.txt". Only the features that contain means and standard deviations are retained, i.e. when the
names contain the strings "mean" or "std"
3. Renames the features such that they become compliant with the R syntax
4. Projects the data frame `data` such that only the columns determined in step 2 are kept
5. Adds activity data to the data set as a column of type `factor` named `activity`
6. Copies `data` to a second data frame called `data2`
7. Adds the subject id to `data2`, under name `subject` 
8. Reshapes and summarizes the variables described in "CodeBook.md" by performing their mean for a given subject and activity
9. Writes the resulting data frame `data2` to file "data2.txt"  

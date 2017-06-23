# Programming assignment for Getting and Cleaning Data course 

This is the course project for Getting and Cleaning Data course on Coursera. 

# Description

The data which we used represent data collected from the accelerometers from the waist-mounted smartphone Samsung Galaxy S. Data was 
collected from 30 different subjects which were performing different activities and contains:

X data - sensor signals

Y data - activity types that subjects performed

A full description of the data used in this project can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# R script
R script that does the cleaning and tidying of the data does the following:

- read test data

- read train data

- merge test and training data sets (append rows) ; 

- change column names 

- filters out only mean and std measurements from the features set

- merge all data sets

- create data set with the average of each variable  for each activity  and each subject




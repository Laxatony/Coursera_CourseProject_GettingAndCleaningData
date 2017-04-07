setwd("D:/ProjectWork/Coursera_CourseProject_GettingAndCleaningData")

# run_anaysis.R
library(data.table) ## fread(a faster method for reading data)
library(dplyr)      ## manipulate df with: tbl_df, select, filter, ...
library(tidyr)      ## manipulate df with: spread, gather, ...
library(lubridate)  ## for functions relted to time

source("CombineDataIntoDF.R")

## Num of Row: amount of the test instructions
#     subject_: test taker id (10299*1)
#           X_: each row has values of 561 features(10299*561)
#           y_: instruction labels(10299*1)
#   body_acc_x: each row has 128 signals related to body acceleration(10299*128)
#   body_acc_x: ach row has 128 signals related to total acceleration(10299*128)


path_TestData <- c("./UCI HAR Dataset/test/subject_test.txt",
                   "./UCI HAR Dataset/test/X_test.txt",
                   "./UCI HAR Dataset/test/y_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt",
                   "./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")

path_TrainData <- c("./UCI HAR Dataset/train/subject_train.txt",
                    "./UCI HAR Dataset/train/X_train.txt",
                    "./UCI HAR Dataset/train/y_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt",
                    "./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")

data_subject <- CombineDataIntoDF(path_TestData[1], path_TrainData[1])
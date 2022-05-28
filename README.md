# ProgrammingAssignment1
(User-defined functions to automate the analysis of data found in multiple files in a file directory)

There are 3 parts to this assignment, each involving the creation of a user-defined function to analyze a specified list of monitors.  Data has been collected by these monitors (there are 332 monitors, id = 1:332) and stored in CSV format in a zip directory [rprog_data_specdata.zip](https://github.com/dbalban/ProgrammingAssignment1/files/8790029/rprog_data_specdata.zip).

## Part 1
Part 1 of the assignment is to write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. A prototype of the function is as follows

pollutantmean <- function(directory, pollutant, id= 1:332){
}

'directory' is a character vector of length 1 indicating the location of the csv files  
'pollutant' is a character vector of length 1 indicating the name of the the name of the pollutant for which we will calculate the mean; either 'sulfate' or 'nitrate'.
'id' is an integer vector indicating the monitor ID numbers to be used

Return the mean of the pollutant across all monitors listed in the 'id' vector (ignoring NA values).  Do not round the result.

## Part 2
Part 2 of the assignment is to write a function that reads a directory full of files and reports the number of completely observed cases in each data file. The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. A prototype of this function follows

complete <- function(directory, id= 1:332){
}

'directory' is a character vector of length 1 indicating the location of the csv files  
'id' is an integer vector indicating the monitor ID numbers to be used

Return a data frame of the form
id   nobs
1    117
2    1041
...
where 'id' is the monitor ID number and nobs is the number of complete cases.

## Part 3
Part 3 of the assignment is to write a function that takes a directory of data files and a threshold for complete cases and calculates the correlation between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) is greater than the threshold. The function should return a vector of correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric vector of length 0. A prototype of this function follows

corr <- function(directory, threshold = 0){
}

'directory' is a character vector of length 1 indicating the location of the csv files  
'threshold' is a numeric vector of length 1 indicating the number of completely observed observations (on all variables) required to compute the correlation between nitrate and sulfate; the default is 0

Return a numeric vector of correlations.  Do not round the result.


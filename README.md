# ProgrammingAssignment1
(User-defined functions to automate the analysis of data found in multiple files in a file directory)

The goal of this assignment is to write a function that calculates the mean of a pollutant accross a specified list of monitors with specific requirements as to the arguments.  Data has been collected by these monitors (there are 332 monitors, id = 1:332) and stored in CSV format in a zip directory [rprog_data_specdata.zip](https://github.com/dbalban/ProgrammingAssignment1/files/8790029/rprog_data_specdata.zip).  

Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. A prototype of the function is as follows

pollutantmean <- function(directory, pollutant, id= 1:332){
}

'directory' is a character vector of length 1 indicating the location of the csv files  
'pollutant' is a character vector of length 1 indicating the name of the the name of the pollutant for which we will calculate the mean; either 'sulfate' or 'nitrate'.
'id' is an integer vector indicating the monitor ID numbers to be used

Return the mean of the pollutant across all monitors listed in the 'id' vector (ignoring NA values).  Do not round the result.

complete <- function (directory, id = 1:332){
  
  # create list of full path to files 
  filelist <- list.files(directory, pattern = ".csv", full.names = TRUE)
  
  # initialize a data frame as the output, contains two columns id and nobs
  output <- data.frame(id = numeric(), nobs = numeric())
  
  # iterate through each of the specified monitors
  for(i in id){
    # read in the monitor data for the specified monitor
    monitor_data <- read.csv(filelist[i])
    # coerce the logical vector for complete cases in the monitor data as numeric and assign to a variable called good
    good <- as.numeric(complete.cases(monitor_data))
    # take the sum of the numeric vector, where the TRUE cases are coerced to value 1, sum provides the number of complete cases
    nobs <- sum(good)
    # create a variable id_num to describe the monitor for which the number of complete cases was determined
    id_num <- i
    # row-bind id_num and nobs to the initial data frame to add in row of new data
    output <- rbind(output, data.frame(id = id_num, nobs = nobs))
  }
  # return the data frame of id and nobs as the return value of the function
  output
}

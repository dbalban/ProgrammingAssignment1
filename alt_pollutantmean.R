# Create a function to calculate mean of a pollutant for a list of monitors, all specified when function is called with 3 arguments: directory, pollutant and id
pollutantmean <- function(directory, pollutant, id= 1:332){
  
  # create a character vector that lists the files in the directory, return full names 
  filelist <- list.files(path = "specdata", pattern = ".csv", full.names = TRUE)
  # initialize a vector to store pollutant data   
  pollutantdata <- numeric()
  # read in the data from each of the files specified in the arg id and concatenate data to pollutantdata vector
  for (i in id){
    data <- read.csv(filelist[i])
    pollutantcol <- data[[pollutant]]
    pollutantdata <- c(pollutantdata, pollutantcol)
  }
  # calculate the mean of the pollutant vector, excluding the NAs
  mean(pollutantdata, na.rm = TRUE)
  
}

# Create a function to calculate mean of a pollutant for a list of monitors, all specified when function is called with 3 arguments: directory, pollutant and id
pollutantmean <- function(directory, pollutant, id= 1:332){
  
  # create a character vector that lists the files in the directory, return full names 
  filelist <- list.files(path = "specdata", pattern = ".csv", full.names = TRUE)
  # initialize a data frame to store data   
  dataframe <- data.frame()
  # read in the data from each of the files specified in the arg id and row bind the data to dataframe
  for (i in id){
    data <- read.csv(filelist[i])
    dataframe <- rbind(dataframe, data)
  }
  # calculate the mean of the arg pollutant, excluding the NAs
  mean(dataframe[[pollutant]], na.rm = TRUE)
  
}

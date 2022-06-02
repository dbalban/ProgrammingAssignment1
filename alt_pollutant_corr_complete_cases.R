source("complete_nobs.R")

# create a function with two arguments of the directory name and a threshold for complete cases
corr <- function (directory, threshold = 0) { 
  
  # create list of full path to files 
  filelist <- list.files(directory, pattern = ".csv", full.names = TRUE)
  
  # create a vector for correlations
  corrvect <- numeric()
  
  # iterate through each of the files and read in data
  for (i in 1:length(filelist)) {
    
    rawdata <- read.csv(filelist[i])
    
    #assign a logical vector to use for subsetting and calculating complete cases
    good <- complete.cases(rawdata)
    
    #calculate good cases by coercing logical vector to numeric to find number of TRUE values
    totalgoodcases <- complete(directory, id = i)
    totalgoodcases <- totalgoodcases[['nobs']]
    
    #subset the data to only complete cases
    goodsubset <- rawdata[good,]
    
    # test condition if number of complete cases is greater than the threshold argument
    if(totalgoodcases > threshold) {
      
      #if condition met, calculate correlation between sulfate and nitrate
      corvalue <- cor(goodsubset$sulfate, goodsubset$nitrate)
      #insert calculated correlation into output vector 
      corrvect <- c(corrvect, corvalue)
      
    }
    
  }
  # return value for the function is the vector of correlations
  corrvect
}

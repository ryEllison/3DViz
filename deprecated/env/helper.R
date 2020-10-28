###Fxn block
directory <- function(dir){
  if (FALSE){
    'Helper function to make local sys dir available to backend'
  }
  
  #Package sys dir
  d <- c(dir)
  
  #Fxn I.O
  write.csv(d, paste(dir, 'env/directory.csv', sep = '/'), )
}

####Main block
#Command-line interface; mapping sys args to fxn args
arg <- commandArgs(trailingOnly = TRUE)
dir <- as.character(arg[1])

directory(dir)
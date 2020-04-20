###Sys block
#Non-verbose warnings
options(warn = -1)

###Fxn block
load <- function(dir){
  if (FALSE){
    'Load neccessary dependencies'
  }
  
  #Atomic vector of dependencies
  dependencies <- c('rmarkdown',
                    'shiny',
                    'yaml',
                    'jsonlite',
                    'crayon',
                    'flexdashboard',
                    'stringr')
  
  #Load
  for (i in dependencies){
    #character.only = TRUE is argue required for base-R dependency loop because of NSE method of library
    suppressMessages(library(i, 
                             lib.loc = c(paste(dir, 'env/distro/R/win-library/3.6', sep = '/'),
                                         paste(dir, 'env/distro/R/R-3.6.2/library', sep = '/')),
                             character.only = TRUE))
  }
}

launch <- function(dir){
  if (FALSE){
    'Launch shiny dashboard'
  }
  
  #Pandoc management
  Sys.setenv(RSTUDIO_PANDOC = paste(dir, 'env/distro/R/win-library/3.6/pandoc', sep = '/'))
  
  #Execute
  run(paste(dir, 'env/backend.rmd', sep = '/'),
      shiny_args = list(port = 3838,
                        host = '0.0.0.0'))
}

###Main block
#Command-line interface; mapping sys args to fxn args
arg <- commandArgs(trailingOnly = TRUE)
dir <- as.character(arg[1])

load(dir)
launch(dir)


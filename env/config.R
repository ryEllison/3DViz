###Sys block
#Non-verbose warnings
options(warn = -1)

###Configure
config <- function(dir){
  if (FALSE){
    'Install requisite dependencies into native R env on local machine'
  }
  
  #Atomic vector of dependencies
  dependencies <- c('rmarkdown',
                    'shiny',
                    'yaml',
                    'jsonlite',
                    'crayon',
                    'flexdashboard',
                    'stringr',
                    'plot3D',
                    'RColorBrewer')
  
  #Install
  for (i in dependencies){
    install.packages(i,
                     repos = 'http://cran.rstudio.com/',
                     lib = c(paste(dir, 'env/distro/R/win-library/3.6', sep = '/')))
  }
}

####Main block
#Command-line interface; mapping sys args to fxn args
arg <- commandArgs(trailingOnly = TRUE)
dir <- as.character(arg[1])

config(dir)
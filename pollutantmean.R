## part 1 instructions page 
print(R.version.string)
## [1] "R version 3.4.0 (2017-04-21)"
source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064128
pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706047
pollutantmean("specdata", "nitrate", 23)
## [1] 1.280833

## function pollutantmean 
pollutantmean("~/Sync/Coursera Data Science/specdata/","sulfate",1:10)


pollutantmean<- function(pollutant) 
                {
                  
                  numrw <- nrow(pollutant)
                  means <- numeric(pollutant)
                  for(i in 1:pollutant)
                  {means[i]}
                  pollutant <- means(poll) 
                  
                  id <- 
                  g <- g + 10
                  g
}

#####  WORK IN PROGRESS   ##########

#tools::list_files_with_exts("~/Sync/Coursera Data Science/specdata/","csv")

mypkges <- c("xlsx","plyr","RODBC","tools")
#install.packages(mypkges)
lapply(mypkges, require, character.only = TRUE)


pollutantmean(directory = "~/Sync/Coursera Data Science/specdata/", pollutant = "sulfate" ,1:332)

pollutantmean<- function(directory,pollutant,id) 
                  {
                    
            # did not work !!
            ##  myfiles <- paste(directory,paste(id,"csv",sep = "."),sep = "/")
                     myfiles <- paste(directory,sprintf("%03d.csv", id),sep = "/")
                        # a is the read list of files 
                    a <- lapply(myfiles,read.csv)
                        #b is putting the elements from "a" into a dataframe
                    b <- ldply(a)
                          #mean for all rows and only pollutant column in b;omit na rows
                    mean(b[,pollutant], na.rm = TRUE)
                    
                  }


### part 2  ###
###############

pollutantmean<- function(directory,pollutant,id) 
{
    #used paste to concat the number and file extension. might be able to use sprintf 
    # !! did not work . myfiles <- paste(directory,paste(id,"csv",sep = "."),sep = "/")
  myfiles <- sprintf("%03d.csv", id)
  # a is the read list of files 
  a <- lapply(myfiles,read.csv)
  #b is putting the elements from "a" into a dataframe
  b <- ldply(a)
  #mean for all rows and only pollutant column in b;omit na rows
  mean(b[,pollutant], na.rm = TRUE)
  
}



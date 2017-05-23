##### Used to source and run to prevent stackoverflow   ####
###### week 2 part 2   #####   #sessioninfo()
mypkges <- c("xlsx","plyr","RODBC","tools")
#install.packages(mypkges)
lapply(mypkges, require, character.only = TRUE)


source("corr.R")
source("complete.R")
source("pollutantmean.R")



# declare variables to use with corr function and when it calls complete function which uses the variables 

id <- 1:332


#complete(directory = "~/Sync/Coursera Data Science/specdata/", id = 1:332)
corr("~/Sync/Coursera Data Science/specdata/", threshold = 200)

### programming quiz  ###

 pollutantmean("~/Sync/Coursera Data Science/specdata/", "sulfate", 1:10)
 pollutantmean("~/Sync/Coursera Data Science/specdata/", "nitrate", 70:72)
 pollutantmean("~/Sync/Coursera Data Science/specdata/", "sulfate", 34)
 pollutantmean("~/Sync/Coursera Data Science/specdata/","nitrate")
 
 cc <- complete("~/Sync/Coursera Data Science/specdata/", c(6, 10, 20, 34, 100, 200, 310))
 print(cc$nobs)
 
 cc <- complete("specdata", 54)
 print(cc$nobs)
 
 
 set.seed(42)
 cc <- complete("~/Sync/Coursera Data Science/specdata/", 332:1)
 use <- sample(332, 10)
 print(cc[use, "nobs"])
 
 
 cr <- corr("~/Sync/Coursera Data Science/specdata/")                
 cr <- sort(cr)                
 set.seed(868)                
 out <- round(cr[sample(length(cr), 5)], 4)
 print(out)
 
 cr <- corr("~/Sync/Coursera Data Science/specdata/", 129)                
 cr <- sort(cr)                
 n <- length(cr)                
 set.seed(197)                
 out <- c(n, round(cr[sample(n, 5)], 4))
 print(out)
 
 
 cr <- corr("~/Sync/Coursera Data Science/specdata/", 2000)                
 n <- length(cr)                
 cr <- corr("~/Sync/Coursera Data Science/specdata/", 1000)                
 cr <- sort(cr)
 print(c(n, round(cr, 4)))
 
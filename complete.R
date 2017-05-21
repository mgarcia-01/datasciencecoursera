###### week 2 part 2   #####   #sessioninfo()
#mypkges <- c("xlsx","plyr","RODBC","tools")
#install.packages(mypkges)
#lapply(mypkges, require, character.only = TRUE)

# complete(directory = "~/Sync/Coursera Data Science/specdata/", id = 1:332)

complete <- function(directory,id = 1:332) {
                                      myfiles <- paste(directory,sprintf("%03d.csv", id),sep = "/")
                                      # a is the read list of files 
                                      a <- lapply(myfiles,read.csv)
                                      
                                      #b is putting the elements from "a" into a dataframe
                                      b <- ldply(a)
                                      ba <- b[complete.cases(b), ]
                                      #count the ids
                                      c <- count(ba$ID)  
                                  
                                      ##  change the column name of the "c" array
                                      names(c)[names(c)=="x"] <- "id"
                                      names(c)[names(c)=="freq"] <- "nobs"
                                      #print(c)
                                      return(c)
                                   }
# complete(directory = "~/Sync/Coursera Data Science/specdata/", id = 1:332)
#####  FUNCTION POLLUTEMEAN   ##########

#tools::list_files_with_exts("~/Sync/Coursera Data Science/specdata/","csv")

#mypkges <- c("xlsx","plyr","RODBC","tools")
#install.packages(mypkges)
#lapply(mypkges, require, character.only = TRUE)


#pollutantmean(directory = "~/Sync/Coursera Data Science/specdata/", pollutant = "sulfate" ,id = 1:332)

pollutantmean<- function(directory,pollutant,id = 1:332) 
                  {
                    
            ## did not work: myfiles <- paste(directory,paste(id,"csv",sep = "."),sep = "/")
                     myfiles <- paste(directory,sprintf("%03d.csv", id),sep = "/")
                        # a is the read list of files 
                    a <- lapply(myfiles,read.csv)
                        #b is putting the elements from "a" into a dataframe
                    b <- ldply(a)
                          #mean for all rows and only pollutant column in b;omit na rows
                    mean(b[,pollutant], na.rm = TRUE)
                    
                  }

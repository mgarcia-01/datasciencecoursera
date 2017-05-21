###### week 2 part 2   #####   #sessioninfo()
#mypkges <- c("xlsx","plyr","RODBC","tools")
#install.packages(mypkges)
#lapply(mypkges, require, character.only = TRUE)


corr <- function(directory,threshold = 0) 
      {
          mydata = complete(directory,id)
          ids = subset(mydata,mydata$nobs > threshold)$id  # or use  df[df["nobs"] > threshold, ]$id    
          corresult = numeric()
      
         for (i in ids) 
                {
                  #myfiles <- paste(directory,sprintf("%03d.csv", i),sep = "/")
                  a <-  paste(directory,sprintf("%03d.csv", i),sep = "/")
           
                  b <- read.csv(paste(directory,sprintf("%03d.csv", i),sep = "/"))
                  #get the rows from "b" that are not containing Na
                  c <- b[complete.cases(b), ]
                 #correlation for observations
                  corresult = c(corresult,cor(c$sulfate, c$nitrate))
                 }
          # returns the output as numeric
          return(corresult)
      }


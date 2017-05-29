##R_Programming assignment 3 week 4 ##
library(plyr)
library(dplyr)
fileURL <- "~/data_toolbox/R_Program/rprogProgAssignment3-data/outcome-of-care-measures.csv"
fileURL2 <- "~/data_toolbox/R_Program/rprogProgAssignment3-data/hospital-data.csv"
fileURL <- "/Users/michaelgarcia/CloudStation/data_toolbox/R_Program/rprogProgAssignment3-data/outcome-of-care-measures.csv"
####PC
fileURL <- "T:/DataScienceDirectory/data_toolbox/R_Program/rprogProgAssignment3-data/outcome-of-care-measures.csv"
fileURL2 <- "T:/DataScienceDirectory/data_toolbox/R_Program/rprogProgAssignment3-data/hospital-data.csv"
outcome <- read.csv(fileURL)
hd <- read.csv(fileURL2)


##### function #####
best <- function(state, outcome) {
      ## Read outcome data
            a <- read.csv(fileURL)
            aa <- a[c(2,7,11,17,23)]
            ab <- plyr::rename(aa,c("Hospital.Name"="hospital name"
                              ,"State" = "state"
                              , "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack" = "heart attack"
                              ,"Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure" = "heart failure"
                              , "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia" = "pneumonia"
                              )
                        )
            x=state
            y=outcome
            
      ## Check that state and outcome are valid
               
            if (missing(y))
                stop("missing state")
            if (missing(x))
              stop("missing outcome")
            if ((x %in% ab$state) == FALSE)
               stop("invalid state")
            if((y %in% c("heart attack", "heart failure" , "pneumonia")) == FALSE)
              stop("invalid outcome")
            
                c <- subset(ab, ab$state == x
                                  , select = c("hospital name", y )
                              )
                myOutput <- subset(c, c[2]!= "Not Available")
                 
                 # min(as.numeric(as.character(myOutput[,2])), na.rm=T)
                ## gets the columnName for the minimum Outcome column
                hospital <- with(myOutput, myOutput[1][myOutput[2] == min(as.numeric(as.character(myOutput[,2])), na.rm=T)])
          
             
          ## Return hospital name in that state with lowest 30-day death rate'
                 #hospital <- as.character(dplyr::first(myOutput$`hospital name`,order_by = myOutput[2]))
          return(hospital)
      
}


rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
      a <- read.csv(fileURL)
      aa <- a[c(2,7,11,17,23)]
      ab <- plyr::rename(aa,c("Hospital.Name"="hospital name"
                              ,"State" = "state"
                              , "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack" = "heart attack"
                              ,"Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure" = "heart failure"
                              , "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia" = "pneumonia"
      )
      )
      x=state
      y=outcome
      z=num
  ## Check that state and outcome are valid
  
      if (missing(y))
        stop("missing state")
      if (missing(x))
        stop("missing outcome")
      if ((x %in% ab$state) == FALSE)
        stop("invalid state")
      if((y %in% c("heart attack", "heart failure" , "pneumonia")) == FALSE)
        stop("invalid outcome")
      
      c <- subset(ab, ab$state == x
                  , select = c("hospital name", y )
      )
       myOutput <- subset(c, c[2]!= "Not Available")
    #  hospital <- with(myOutput, myOutput[1][myOutput[2] == min(as.numeric(as.character(myOutput[,2])), na.rm=T)])
  ## Return hospital name in that state with the given rank 30-day death rate

      myRank <- myOutput %>% dplyr::mutate(rank = dplyr::dense_rank(arrange(myOutput[2])))
      d <- subset(myRank, myRank$rank == z
                  , select = c("hospital name", y)
      )
    return(d)
}



#### Questions ####
### question 1 ###
best("SC", "heart attack")

### ques 2 ###

best("NY", "pneumonia")

### ques 3 ###
best("AK", "pneumonia")

x="TX"
y="heart attack"
z= 1
rankhospital("TX", "pneumonia", 10)


write.xlsx(myOutput %>% dplyr::mutate(rank = dplyr::dense_rank(arrange(myOutput[2]))),"T:/DataScienceDirectory/data_toolbox/R_Program/rprogProgAssignment3-data/rankingData.xlsx")

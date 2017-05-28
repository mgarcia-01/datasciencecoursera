##R_Programming assignment 3 week 4 ##
library(plyr)
fileURL <- "~/data_toolbox/R_Program/rprogProgAssignment3-data/outcome-of-care-measures.csv"
fileURL2 <- "~/data_toolbox/R_Program/rprogProgAssignment3-data/hospital-data.csv"
####PC
fileURL <- "T:/DataScienceDirectory/data_toolbox/R_Program/rprogProgAssignment3-data/outcome-of-care-measures.csv"
fileURL2 <- "T:/DataScienceDirectory/data_toolbox/R_Program/rprogProgAssignment3-data/hospital-data.csv"
outcome <- read.csv(fileURL)
hd <- read.csv(fileURL2)

listofnames <- names(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[,11])

best("SC", "heart attack")


names(hd)

best <- function(state, outcome) {
  ## Read outcome data
        a <- read.csv("T:/DataScienceDirectory/data_toolbox/R_Program/rprogProgAssignment3-data/outcome-of-care-measures.csv")
        aa <- a[c(2,7,11,17,23)]
        ab <- rename(aa,c("Hospital.Name"="hospital name"
                            ,"State" = "state", "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack" = "heart attack"
                            ,"Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure" = "heart failure"
                            , "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia" = "pneumonia"
                          )
                         )
        x=state
        y=outcome
  ## Check that state and outcome are valid
              #If (y = "heart attack"){subset(ab, ab$state == x, select = c("hospital name", "heart attack"))}
              #If (y= "heart failure"){subset(ab, ab$state == x, select = c("hospital name", "heart failure"))}
  c <- subset(ab, ab$state == x
                          , select = c("hospital name", y))
  myOutput <- subset(c, c[2] != "Not Available")
  
     
  ## Return hospital name in that state with lowest 30-day death
  sort(myOutput$`heart attack`)
  
  ## rate
}

transform(myOutput, hrank = ave() )


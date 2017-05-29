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
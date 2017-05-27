##R_Programming assignment 3 week 4 ##

fileURL <- "~/data_toolbox/R_Program/rprogProgAssignment3-data/outcome-of-care-measures.csv"
fileURL2 <- "~/data_toolbox/R_Program/rprogProgAssignment3-data/hospital-data.csv"

outcome <- read.csv(fileURL)
hd <- read.csv(fileURL2)


outcome[, 11] <- as.numeric(outcome[, 11])

best("SC", "heart attack")
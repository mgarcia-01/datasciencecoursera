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
pollutantmean("~/Sync/Coursera Data Science/specdata/")

function(pollutantmean)
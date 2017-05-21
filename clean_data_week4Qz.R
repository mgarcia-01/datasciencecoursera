###clean_data_wk4 ##
mypkges <- c("xlsx","plyr","RODBC","tools","jpeg","data.table","dplyr")
#install.packages(mypkges)
lapply(mypkges, require, character.only = TRUE)


fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destURL <- "~/data_toolbox/DataCleaning_qz4q1.csv"

download.file(fileURL, destfile = destURL
              , method = "curl")

ams <- read.csv(destURL,sep = ",")
strsplit(names(ams),"wgtp")


#### ques 2 ###
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
destURL <- "~/data_toolbox/DataCleaning_qz4q12GDP.csv"

download.file(fileURL, destfile = destURL
              , method = "curl")
aGDP <- read.csv(destURL,sep = ",", nrows = 190, header = TRUE)
##aGDP <- fread(destURL,",",)

head(aGDP,190:190)

USD_GDP <- as.numeric(gsub(",","",aGDP$US.dollars.))

mean(USD_GDP,na.rm = TRUE)

######### Question 3  ###

a <- grep("^United",aGDP$Country)
  
######## question 4  #####

GDPfileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
EDUfileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
GDPdestURL <- "~/data_toolbox/ClnDtaQz4_Q4_GDP.csv"
EDUdestURL <- "~/data_toolbox/ClnDtaQz4_Q4_EDU.csv"

GDPDwLoad <- download.file(GDPfileURL, destfile = GDPdestURL)
EDUDwLoad <- download.file(EDUfileURL, destfile = EDUdestURL)


GDP <- read.csv(GDPdestURL, sep = ",")
EDU <- read.csv(EDUdestURL, sep = ",")

names(GDP)
names(EDU)

mergedData <- merge(GDP, EDU, by.x = "Ctry_Code", by.y = "CountryCode",all = TRUE)

names(mergedData)
head(mergedData,1)
mergedData[13,]

## string  Fiscal year end: March 20
grep("Fiscal year end: March 20",mergedData$Special.Notes)

grep("*June*",mergedData$Special.Notes)

###### Question 5  #####
library(quantmod)
amzn =  getSymbols("AMZN",verbose = FALSE,auto.assign=FALSE, src = "google")
sampleTimes = index(amzn)

typeof(sampleTimes)
st= c(sampleTimes); z= as.Date(st,"%d%b%y")

library(lubridate)
typeof(sti)
sti <- as.Date(sampleTimes)

write.xlsx(sampleTimes,"~/data_toolbox/sampletimesqz4.xlsx")
write.csv(sampleTimes,"~/data_toolbox/sampletimesqz4.csv")


grep("2012",sampleTimes)




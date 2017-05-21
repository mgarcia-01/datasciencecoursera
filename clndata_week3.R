## clndata week 3
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destURL <- "~/data_toolbox/ClnDataQzthree.csv"
download.file(fileURL, destfile = destURL
              , method = "curl")


a <- read.csv(destURL, sep = ",")


b <- which(a$ACR == 3 & a$AGS== 6)

### ques 2 ##

install.packages("jpeg", dependencies = TRUE)
library(jpeg)

imgFileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
imgDestURL <- "~/data_toolbox/wkthreqzthre_imgage.jpeg"
download.file(imgFileURL, destfile = imgDestURL, method = "curl")

imgI <- jpeg::readJPEG("~/data_toolbox/wkthreqzthre_imgage.jpeg", native = TRUE)

quantile(imgI, probs = c(.3,.8))


###  que 3 ###
    # original data source http://data.worldbank.org/data-catalog/GDP-ranking-table    http://data.worldbank.org/data-catalog/ed-stats
GDPfileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
EDUfileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
GDPdestURL <- "~/data_toolbox/ClnDtaQz3_Q4_GDP.csv"
EDUdestURL <- "~/data_toolbox/ClnDtaQz3_Q4_EDU.csv"

GDPDwLoad <- download.file(GDPfileURL, destfile = GDPdestURL)
EDUDwLoad <- download.file(EDUfileURL, destfile = EDUdestURL)


GDP <- read.csv(GDPdestURL, sep = ",")
EDU <- read.csv(EDUdestURL, sep = ",")

names(GDP)
names(EDU)

mergedData <- merge(GDP, EDU, by.x = "Ctry_Code", by.y = "CountryCode",all = TRUE)

names(mergedData)

mergedData[13,]


## ques 4   ###
tapply(merge$Rank, merge$`Income Group`, mean)

### ques 5  ###
merge$RankGroups <- cut2(merge$Rank, g=5)
table(merge$RankGroups, merge$`Income Group`)


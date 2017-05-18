library(XML)
library(xlsx)
install.packages("XML",dependencies = TRUE)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
###doc  <-  xmlTreeParse(fileUrl, useInternal = TRUE)
## codebook for data fields found here https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf


download.file(fileUrl, destfile = "~/data_toolbox/DataCleaning_qz2q2.csv"
              , method = "curl"
)


quest2Data<- read.csv("~/data_toolbox/cleanData_qz1q1.csv"
                              , sep = "," )
head(quest2Data,1)

###
install.packages("RMySQL", dependencies = TRUE)

library(RMySQL)

fileUrl <- "http://biostat.jhsph.edu/~jleek/contact.html"


fileUrl

download.file(fileUrl, destfile = "~/data_toolbox/DataCleaning_q2_wk4.xml"
              , method = "curl"
)

library(XML)

URL <- ("http://biostat.jhsph.edu/~jleek/contact.html")
html <- htmlTreeParse(url,useInternalNodes=T)
xpathSApply(html,"//title",xmlValue)

con <- url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlcode = readLines(con)
close(con)

nchar(head(htmlcode,100))

## question 5
#  https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for
# original data source http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for

("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"


download.file(fileUrl, destfile = "~/data_toolbox/DataCleaning_qz2q5.for"
              , method = "curl"
)

wk2q5Data<- read.delim2("~/data_toolbox/DataCleaning_qz2q5.for"
                      , sep = "\t", header = TRUE, skip = 3 )
head(wk2q5Data,1)

wk2q5Data

read.fwf("~/data_toolbox/DataCleaning_qz2q5.for",widths = 10, header = FALSE)




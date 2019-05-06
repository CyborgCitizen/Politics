#set up softwares

install.packages("rtweet")
install.packages("httpuv")
install.packages("tidyverse")
install.packages("googledrive")
library(rtweet)
library(tidyverse)
library(googledrive)
#set working directory
setwd("/home/")
stringhash <- c("#ottawacentre")
#will ask you to sgn into twitter on a web page popup
rtottawacentre <- search_tweets(stringhash[1],n=1000,include_rts = FALSE)
#loginto Google drive on the web
drive_auth()
#copy tweet search to google drive.
x <- data.frame(rtottawacentre)
y <- as.matrix(x)
write.table(y, file = "foo_OnHome.csv", sep = ",", col.names = NA, qmethod = "double")
(ottawa <- drive_upload("foo_OnHome.csv","foo_OnGoogleDrive.csv"))
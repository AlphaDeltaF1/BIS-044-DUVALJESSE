## Jesse Duval ##
## Assignment 03A ##

rm(list=ls(all=TRUE))
cat("\014") 

if (!require("here")) {
  install.packages("here")
}
library("here")

here("Intro-to-R-2ed","PRESIDENT_precinct_general.csv")
DF <- read.csv("PRESIDENT_precinct_general.csv")

Biden <- 0
Trump <- 0
for (i in 1:1911158){
  if (DF$candidate[i] == "JOSEPH R BIDEN"){
    Biden <- Biden + DF$votes[i]
  }
else if (DF$candidate[i] == "DONALD J TRUMP"){
      Trump <- Trump + DF$votes[i]
}
}
cat('Trump: \n',Trump ,'\n')
cat('Biden: \n',Biden ,'\n')
  
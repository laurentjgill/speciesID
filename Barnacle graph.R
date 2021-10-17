###Barnacle Measurements

library(ggplot2)

setwd("~/OneDrive - UBC/Year 5/Ecology")
barnacle <- read.csv("Barnacle Measurements.csv")
na.omit(barnacle)
barnacle1 <- barnacle[-c(41,42), ]
barnaclegraphdiameter <- ggplot(barnacle1, aes(x=Species, y=Diameter)) + geom_boxplot() + theme_classic()+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + ylab("Diameter (mm)")
barnaclegraphdiameter
barnaclegraphheight<- ggplot(barnacle1, aes(x=Species, y=Height)) + geom_boxplot() + theme_classic()+
  scale_y_continuous(breaks = scales::pretty_breaks(n = 10)) + ylab("Height (mm)")
barnaclegraphheight

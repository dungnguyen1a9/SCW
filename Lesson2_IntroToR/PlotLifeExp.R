#plot plotlifeExp.R script

#read data into R

myDataFull <- read.table("gapminder.txt",header = TRUE)

#select data from Canada
canada <- myDataFull[myDataFull$country =="Canada",]

#plot life exp

#save the plot
png("Canada.png") # opening png file to write a plot
plot(canada$year,canada$lifeExp, type = 'l', col = "blue", main ="Year vs Life Exp" , xlab = 'Year', ylab = 'Life Exp')
#source("PlotLifeExp.R")
dev.off() #close the opening png

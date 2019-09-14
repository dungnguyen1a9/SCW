#my first R command
print("Good Morning")

#assign variable
name <- "jane"
price <- 3.99
print(price)
ls()
rm(price)
ls()

mass <- 47.5
age <- 122
mass <- mass*2.3
age <- age -20
height <- 5
height <- height + 20

res <- sqrt(mass)
getwd()
help(max)
?print

#install a package
install.packages("knitr")
#load the package library that you want to
library(knitr)
score <- 79
#check type of data
typeof(score)
#check if it's integer
is.integer(score)
typeof(is.integer(score))

r1 <- is.integer(score)
r2 <- typeof(r1)
r3 <- is.numeric(r2)
r4 <- is.logical(r3)

#c is combine function that combine values into vector or list
v <- c(4,5,6)
typeof(v)
v<- c(1:3,45)
length(v)
str(v)
#know first 2 values
head(v,n=2)
tail(v,n=2) #last 2 values
#manipulate the vector
v <- c(v,56)
# display structure
str(v)

m <- matrix(c(1:18),3,6)
m
dim(m)
cont <- factor(c("asia","europe","america","africa","ocenia"))
str(cont)
l <- list("Afghanistan", 1952,88787)
print(l)
print(l[1])
str(l)


el_1 <-c("chicken","soup","salad","tea")
el_1_type <- factor(c("solid","liquid","solid","liquid"))
el_cost <- c(4.99,2.99,3.29,1.89)
el_order <- list(el_1,el_1_type,el_cost)
print(el_order)
el_order_df <- data.frame(el_1,el_1_type,el_cost)
print(el_order_df)
dim(el_order_df)

v <- c(2:10)
v[2]
#slice 
v[c(3:6)]
#pull out except number
v[-c(3:6)]
el_order
el_order[1]
# empty col to pull everything in the col
el_order_df[1:2,]
el_order_df[-(1:3),]
el_order_df
#show all type of col uniquely
el_order_df$el_1_type
x <- el_order_df$el_1_type
x

v <- c(1,5,3,4,5)
v1 <- v[v == 5]
df1 <- el_order_df[el_order_df$el_1_type=="solid"]
df1
el_order_df
df1 <- el_order_df[el_order_df$el_1_type=="solid",]
df1
df2 <- el_order_df[el_order_df$el_cost > 3,]
df2

#import csv file
data <- read.table("gapminder.txt", header = TRUE)
head(data)
# read.csv file 
typeof(data)
x1 <- data[,c(3,5)]
head(x1)
 
data[data$country == "Sweden",]
country <- unique(data[,1])
length(country)

data_lifeExp <- data[data$lifeExp<70,]

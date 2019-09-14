gapminder <- read.table("gapminder.txt", header = TRUE)

fahrenheit_to_celsius <- function(temp_F){
  temp_C <- (temp_F -32)*5/9
  return (temp_C)
}

fahrenheit_to_celsius(90)

MeanlifeExp <- function(continent_lifeExp){
  data <- gapminder[gapminder$continent == continent_lifeExp,"lifeExp"]
  result <- mean(data)
  return(result)
}
MeanlifeExp("Europe")

#Note about usage of subdata
# this line show that we get all column of subdata that have continent == "Europe"
data <- gapminder[gapminder$continent == "Europe",]

# this line is show that we get subdata of continent =="Europe" with column "lifeExp" only
data <- gapminder[gapminder$continent == "Europe","lifeExp"]

asia_meanLifeExp <- MeanlifeExp("Asia")

if (asia_meanLifeExp >= 50){
  print("Life Expectancy of Asia is greater than or equal to 50")
}else{
  print("Life Expectancy of Asia is lower than 50")
}

# for loop ~ (i in 0:5) mean for i = 0;i<=5,i++
for (i in 0:5){
  print(data[i,4])
}

#while loop
i <- 0
while ( i < 5){
  print(i)
  i <- i+ 1
}

menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid","liquid","solid","liquid"))
menuCost <- c(4.99,2.99,3.29,1.89)
myorder_df <- data.frame(menuItems,menuType,menuCost)
myorder_df

for (i in myorder_df$menuItems){
  print(i)
}

continent_data <- unique(gapminder$continent)
continent_data

for (i in continent_data){
  result <- MeanlifeExp(i)
  if (result < 50 ){
    print(paste0("LifeExp of ", i ," is smaller than 50"))
  }else{
    print(paste0("LifeExp of ",i," is larger than or equal to 50"))
  }
}


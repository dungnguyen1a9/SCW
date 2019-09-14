library(ggplot2)
gapminder <- read.table("gapminder.txt", header = TRUE)

head(gapminder)

ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point(aes(color=continent)) + geom_line(color = "black")


ggplot(data = gapminder, aes(x = gdpPercap, y= lifeExp, color = continent)) +
  geom_point(alpha = 0.5, shape = 17 , size = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm", size = 0.75)

# get countries startwith A and Z
az_row <- startsWith(as.vector(gapminder$country), c("A","Z"))
az_countries <- gapminder[az_row,]

#subplot
lifeExp_plot <- ggplot(data = az_countries, aes(x = year, y = lifeExp, color = continent))+
  geom_line() +
  facet_wrap(~country) + #allow all individual subplots showed in one graph
  labs(
    x = "Year", # x axis title
    y = "Life Expectancy", # y axis title 
    title = " Figure 1" , # main title
    color = "Continent"
  ) + 
  #rotate x title 45 degree and remove ticks on x axis
  theme( axis.text.x = element_text(angle = 45), axis.ticks.x=element_blank())

ggsave (filename = "lifeExp.png", plot = lifeExp_plot, width = 12, height = 10, dpi = 300, units =  "cm")   

ggsave("myPlot.pdf")


aus_row <- gapminder[gapminder$country == "Australia",]
ggplot(data = aus_row, aes(x = year, y = lifeExp)) +
  labs(
    x = "YEAR",
    y = "Life Expectancy",
    title = "Australia Life Expectancy"
  )

e_rows <- startsWith(as.vector(gapminder$country),c('E'))
e_countries <- gapminder[e_rows,]              

ggplot(data = e_countries, aes(x=year,y=pop/10000000, fill = continent)) +
  geom_bar(stat = "identity")+
  facet_wrap(~country)+
  labs(
    x = "Year",
    y = "Population (Million)",
    title = "Figure 2",
    fill = "Continent"
  ) +
  theme( axis.text.x = element_text(angle = 45), axis.ticks.x=element_blank())





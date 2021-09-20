#loading_libraries
library(tidyverse)
#load_gapminder_dataset
library(gapminder)
View(gapminder)
head(gapminder)

library(tidyr)
data<-gapminder %>% 
  drop_na()
View(head)

#plotting_viz

library(gganimate)
library(ggplot2)
library(plotly)
p<-ggplot(data=data)+
  
  geom_point(mapping = aes(x=gdpPercap,y=lifeExp,color=continent,size=pop,))+
  transition_time(year)+
  labs(title="year:{frame_time}")
ggplotly(p)


install.packages("tidyverse")
library(ggplot2)
fit<-read.csv("dailyActivity_merged_cleaned.csv")
head(fit)

ggplot(data=fit)+geom_point(mapping = aes(x=TotalDistance,y=Calories))+
  geom_smooth(mapping = aes(x=TotalDistance,y=Calories),color="green")+
  xlab("OverallDistance")+ylab("OverallCaloriesBurnt")


ggplot(data=fit)+geom_point(mapping = aes(x=PercentLightDistance,y=Calories))+
  geom_smooth(mapping = aes(x=PercentLightDistance,y=Calories),color="red")+
  xlab("% LightActiveDistance")+ylab("OverallCaloriesBurnt")


ggplot(data=fit)+geom_point(mapping = aes(x=PercentModerateDistance,y=Calories))+
  geom_smooth(mapping = aes(x=PercentModerateDistance,y=Calories),color="red")+
  xlab("% ModerateActiveDistance")+ylab("OverallCaloriesBurnt")

ggplot(data=fit)+geom_point(mapping = aes(x=PercentVeryActiveDistance,y=Calories))+
  geom_smooth(mapping = aes(x=PercentVeryActiveDistance,y=Calories),color="green")+
  xlab("% VeryActiveDistance")+ylab("OverallCaloriesBurnt")



fit$Steps<-fit$TotalSteps
fit$Steps<-cut(fit$Steps,breaks = c(0,9999,19999,37000),labels = c("LessThan 10k","10k-20k","MoreThan 20k"))
ggplot(data=fit)+geom_bar(mapping = aes(x=Steps,fill=Steps))

lessthan10<-length(which(fit$Steps=="LessThan 10k"))
Ten_20<-length(which(fit$Steps=="10k-20k"))
more_20<-length(which(fit$Steps=="MoreThan 20k"))
all<-length(fit$Steps)



(lessthan10/all)*100
ggplot(data=fit)+
  geom_point(mapping = aes(x=TotalSteps,Calories))+
  geom_smooth(mapping = aes(x=TotalSteps,Calories),color="green")
?geom_smooth



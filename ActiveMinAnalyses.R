ggplot(data=fit)+geom_smooth(mapping = aes(x=TotalActiveMins,y=Calories),color="green")

ggplot(data=fit)+
  geom_smooth(mapping = aes(x=PercentVeryActiveMins,y=Calories),color="green")

ggplot(data=fit)+
  geom_smooth(mapping = aes(x=PercentLightlyActiveMins,y=Calories),color="red")
  
ggplot(data = fit)+geom_histogram(mapping = aes(x=PercentVeryActiveMins))

max(fit$TotalActiveMins)
min(fit$TotalActiveMins)
max(fit$LightlyActiveMinutes)
fit$Actmins<-fit$TotalActiveMins
fit$Actmins<-cut(fit$Actmins,breaks = c(0,200,400,600),labels = c("0-200","200-400","400-600"))
ggplot(data = fit)+geom_bar(mapping = aes(x=Actmins))

max(fit$VeryActiveMinutes)
min(fit$VeryActiveMinutes)

fit$Vact<-fit$VeryActiveMinutes
fit$Vact<-cut(fit$Vact,breaks = c(-1,50,100,150,250),labels = c("less","moderate","high","very high"))
ggplot(data = fit)+geom_bar(mapping = aes(x=Vact,fill=Vact))

max(fit$LightlyActiveMinutes)
min(fit$LightlyActiveMinutes)

fit$Lact<-fit$LightlyActiveMinutes
fit$Lact<-cut(fit$Lact,breaks = c(0,150,300,520),labels = c("0-150","150-300","300-450 and more"))
ggplot(data = fit)+geom_bar(mapping = aes(x=Lact,fill=Lact))



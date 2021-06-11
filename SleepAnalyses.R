sleep<-read.csv("sleepDay_merged.csv")
sleep
View(sleep)
max(sleep$TotalHoursAsleep)

sleep$SleepCategory<-sleep$TotalHoursAsleep
sleep$SleepCategory<-cut(sleep$SleepCategory,breaks = c(1,7,9,20),labels = c("UnderSleep","IdealSleep","OverSleep"))
ggplot(data=sleep)+geom_bar(mapping = aes(x=SleepCategory,fill=SleepCategory))


(length(which(sleep$SleepCategory=="OverSleep"))/length(sleep$SleepCategory))*100



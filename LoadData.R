setwd("coursera/Exploratory Data Analysis/Project")
epc<-read.table("household_power_consumption.txt",sep=";",fill = TRUE, header = T,as.is = T)
epc[,1]<-as.Date(epc[,1],format="%d/%m/%Y")
for (i in 3:9) epc[,i]<-as.numeric(epc[,i],is.na=T)
datetime<-paste(epc[,1],epc[,2])
datetime<-strptime(datetime,format="%Y-%m-%d %H:%M:%S")
epc$datetime<-datetime
hpc<-epc[(epc[,1]=="2007-02-01" | epc[,1]=="2007-02-02"),]
str(hpc)
save(hpc,file="hpc.RData")

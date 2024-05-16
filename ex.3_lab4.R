#Exercise 3 Data frames & handling
#1
class_data<-read.csv("F:/RUSL/3rd Year/3.1/ICT3307 - com. stat/Rstudio/pratical1/data.csv",header = TRUE)
class_data
#2
nrow(class_data);ncol(class_data)
#3
head(class_data,4)
tail(class_data,4)
#4
sub1<-class_data[c(3,5,7,10), ]
sub1
#5
sub2<-class_data[(class_data$Age>23),]
subset(class_data,Age>23)
#6
names(class_data)
names(class_data)[1:2]<-c("student_id","hair_color")
names(class_data)
class_data
#7
Height<-c(144,156,160,149,150,152,158,165,169,153)
Weight<-c(45,56,67,58,65,54,43,59,48,40)
class_data<-cbind(class_data,Height,Weight)
class_data
#8
class_data<-edit(class_data)
#edited student1:age=NA,student2:age=NA,student8:weight=NA
class_data
#9
sum(is.na(class_data))
class_data_new<-na.omit(class_data)
class_data_new
#10
class_data_sorted<-class_data_new[order(class_data_new$student_id)]
class_data_sorted

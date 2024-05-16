height<-c(144,156,170,161,149,156,175)
weight<-c(38,42,60,55,40,45,61)
gender<-c("F","F","M","M","F","F","M")

data.frame(height,weight,gender)
data1<-data.frame(height,weight,gender)
data1
read.table("C:/Users/Student/Desktop/0983/data.txt")
read.table("C:/Users/Student/Desktop/0983/data.txt",header = TRUE)
read.csv("C:/Users/Student/Desktop/0983/data.txt", header = TRUE)
read.csv("C:/Users/Student/Desktop/0983/data.txt", header = TRUE)
read.table(file.choose(),header = TRUE)
read.csv(file.choose(),header = TRUE)
read.csv("C:/Users/Student/Desktop/0983/data2.csv", header = TRUE)
ex_data<-data.frame(x1=c(1,3,5),x2=c(2,4,6),x3=c("a","b","c"))
ex_data
x1
attach(ex_data)
x1
detach(ex_data)
x1
data()
data("mtcars")
mtcars[1:6,]
mtcars[1:2,1:2]
str(data1)
sub1<-data.frame(data1$height)
sub1
data1[,1]
data.frame(data1$height)
sub2<-data1[1:2]
sub2
data1[1:2,]
data1[,2]
sub3<-data1[1:2,]
sub3
names(data1)
names(mtcars)
names(data1)<-c("strature","weight","sex")
names(data1)
data1
names(data1)[2]<-"wt"
names(data1)
data1
#age<-c(22,33,44,55,66,77,88)
#age
#data1<-cbind(data1,age)
#data1
data2<-data.frame(age=c(22,33,44,55,66,77,88))
data1<-cbind(data1,data2)
data1
datanew<-c(strature=153,wt=55,sex="M",age=22,age=22,age=22)
data1<-rbind(data1,datanew)
data1<-data1[,-6]
data1
data1<-data1[,-5]


datanew<-c(strature=111,wt=555,sex="M",age=44)
data1<-rbind(data1,datanew)
data1
data1<-data1[-10,]
data1


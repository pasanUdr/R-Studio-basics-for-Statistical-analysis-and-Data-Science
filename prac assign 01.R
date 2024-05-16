#1-a
A=seq(3,300,by=3)
A
sum(A)
sum(seq(3,300,by=3))
#1-b
2.6^9
log(12.5,base=exp(1))
x=exp(1)
x
exp(2*x)
B=(2.6^9)+(log(12.5,base=exp(1)))+(exp(2*x))
B

#2-a
rep(1:5,times=5)
#2-b
seq(from=10, to=10.5,length.out=12)
#2-c
rep(seq(1:5),times=c(6,5,4,3,1))
#2-d
sort(seq(1:20),decreasing = TRUE)
#2-e
c(1:20,19:1)
c(seq(1,20),seq(19,1))
#2-f
seq(1,1000 ,by=2)

#3
A<-matrix(c(-4,4,4,-7,1,3,5,-3,1),nrow = 3,byrow = TRUE)
A
B<-matrix(c(1,-1,1,1,-2,-2,2,1,3),nrow = 3,byrow = TRUE)
B
C<-matrix(c(1,2,1,0,1,3,-5,4,2),nrow = 3,byrow = TRUE)
C
#3-a
A+B
#3-b
A+B-C
#3-c
2*A+3*B-2*C
#3-d
A%*%B
#3-e
A%*%B%*%C
#3-f
t(A)
#3-g
t(A%*%B)
#3-h
t(A%*%B)%*%C
#3-i
solve(A)
#3-j
B%*%C
#3-k
abs(B)

#4
A<-matrix(c(2,3,3,1,-2,1,3,-1,-2),nrow = 3,byrow = TRUE)
A
B<-matrix(c(5,-4,3),nrow = 3)
B
inv_A<-solve(A)
inv_A
inv_A%*%B

#5
x<-matrix(c(3,2,-1,1),nrow = 2,byrow = TRUE)
x
y<-matrix(c(1,4,0,0,1,-1),nrow = 2,byrow = TRUE)
y
#5-a
2*x
#5-b
x*x
#5-c
x%*%x*8
#5-d
y[1,2]
#5-e
y[,2:3]

#6
data("rivers")
View(rivers)
#6-a
mean(rivers)
median(rivers)
r<-table(rivers)
r
names(r)[which(r==max(r))] #mode
var(rivers)
sd(rivers)
Range=max(rivers)-min(rivers)
Range
IQR(rivers)
summary(rivers)
#6-b
length(rivers[rivers>=400 & rivers<=900])

#7
Age_Group<-c("50-54","55-59","60-64","65-69","70-74")
Rural_Male<-c(11.7,18.1,26.9,41.0,66.0)
Rural_Female<-c(8.7,11.7,20.3,30.9,54.3)
d1<-data.frame(Age_Group,Rural_Male,Rural_Female)
d1
#7-a-following both methods can be used
d2<-data.frame(Age_Group=c("50-54","55-59","60-64","65-69","70-74"),Urban_Male=c(15.4,24.3,37.0,54.6,71.1),Urban_Female=c(8.4,13.6,19.3,35.1,50.1))
d2
d1new<-merge(d1,d2)
d1new
#also this method can be used
cbind(d1,Urban_Male=c(15.4,24.3,37.0,54.6,71.1),Urban_Female=c(8.4,13.6,19.3,35.1,50.1))
#7-b
mean(d1new$Rural_Male);mean(d1new$Urban_Female)

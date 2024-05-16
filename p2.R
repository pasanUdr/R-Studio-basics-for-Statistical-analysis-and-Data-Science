matrix(c(1:9))
matrix(c(1:9),nrow = 3)
matrix(c(1:14))
matrix(c(1:15),nrow = 3)
matrix(c(1:15),nrow = 3,byrow = T)
A<-matrix(c(1:9),nrow = 3,byrow = T)
A
rownames(A)=c("row1","row2","row3")
colnames(A)=c("col1","col2","col3")
A
dim(A)
t(A)
seq(1:30)
seq1<-seq(1,30,by=2)
seq1
m1<-matrix(seq1)
m1
dim(m1)
m1<-matrix(seq1,nrow = 3)
m1
m1<-matrix(seq1,nrow = 3,byrow = T)
m1
rownames(m1)=c("row1","row2","row3")
m1
m1[2]
m1[2,3]
m1[2,]
m1[,3]
m1[2:3,]
m1[,2:3]
m1[c(1,3),]
m1[,c(1,3)]
m1[-(1:2),]
m1[-c(1,3),]
m1[,-c(1,3)]
m1

m3<-matrix(c(11:25),nrow = 3,byrow = T)
m3

#ex.2
m6<-matrix(seq(1,30,by=2),nrow=3,byrow = T)
m6
m7<-matrix(seq(2,30,by=2),nrow=3,byrow = T)
m7
dim(m6);dim(m7)
m7[1,]
m7[-c(1,3),]
m6+m7
m7-m6
x<-m6[1,]+m7[2,]
x
y<-m7[3,]-m6[2,]
y
z<-m6[3,]+m7[1,]
z
m8<-matrix(c(x,y,z),nrow = 5)
m8
m9<-m6%*%t(m7)
m9
dim(m9)
m6*m7
m10<-m6%*%m8
m10
m11<-m7%*%m8
m11
m12<-m10>m11
m12
x;y;z;m6;m7;m8;m9;m10;m11;m12

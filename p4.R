#merging data frames

dataset1<-data.frame(ID=c(001,002,003),Age=c(11,14,17))
dataset2<-data.frame(ID=c(001,002,003),Gender=c("M","F","M"))
dataset1;dataset2
m1<-merge(dataset1,dataset2) #to merge there must common primary key row to both
m1
dataset3<-data.frame(ID=c(001,004,005),marks=c(45,56,70))
dataset3
m2<-merge(dataset1,dataset3) #only merges data which exists row wise
m2
m2<-merge(dataset1,dataset3,all=TRUE) #merges all data & show the empty fields too
m2
m3<-merge(dataset1,dataset3,all.x=TRUE) #merge & show only which corresponds to 1st dataset/argument
m3
m4<-merge(dataset1,dataset3,all.y=TRUE) #merge & show only which corresponds to 2nd dataset/argument
m4

d1<-data.frame(ID=1:5,x=letters[1:5])
d1
d2<-data.frame(ID=1:5,x=letters[6:10])
d2
m5<-merge(d1,d2)
m5
m5<-merge(d1,d2,all = TRUE)
m5
m6<-merge(d1,d2,by="ID") #merges data by merging ID column
m6

dd1<-data.frame(ID1=1:5,hh=letters[1:5])
dd1
dd2<-data.frame(ID2=1:5,hh=letters[6:10])
dd2
merge(dd1,dd2)
merge(dd1,dd2,all = TRUE) #merge all characters
merge(dd1,dd2,by.x = "ID1",by.y = "ID2") #merge "hh" by the given conditions by ID1 & ID2


#example
marks<-read.csv("C:/Users/Student/Desktop/0983/marks.csv")
marks
marksnew<-edit(marks) #editable window will open in taskbar
marksnew
marksnew<-fix(marks) #editable window will open in taskbar as same as edit command
marksnew
#dealing with missing values
is.na(marksnew) #shows missing values logically by FALSE OR TRUE
sum(is.na(marksnew)) #shows exact number of missing values
#removing missing values
na.omit(marksnew) #removes missing values & print
sum(complete.cases(marksnew)) #shows exact number of complete values/cases
sum(!complete.cases(marksnew)) #shows exact number of incomplete values/cases
#remove incomplete cases
new<-marksnew[complete.cases(marksnew), ] #removes incomplete cases row wise
new
new<-marksnew[ ,complete.cases(marksnew) ] #remove incomplete cases column wise
new
#stacking/unstacking
data<-data.frame(label=rep(c("A","B","C"),3),value=sample(9)) #creating a data set with replicating 3 times ABC & with sample values 1-9
data

uns<-unstack(data,value~label) #unstack that data ro a vector
uns
#duplicate data
exdata<-data.frame(name=c("sunil","kamal","nimal","sunil"),age=c(25,35,45,25))
exdata
duplicated(exdata) #shows duplicated values logically
unique(exdata) #extracts unique data & print it
exdata<-unique(exdata) #assign non duplicated values into exdata
exdata
#sorting

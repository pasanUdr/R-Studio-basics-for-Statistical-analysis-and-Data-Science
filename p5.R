a<-c(1,3,4,2,3,6,5,5,8,4,2,4,1,5)
a

table(a) #create a frequency table within "a" data set

prop.table(table(a)) #finding the relative frequency

cumsum(table(a)) #find cumulative frequencies for each data

mean(a) #find the mean of the data set

median(a) #find the median of the data set

mode(a)

y<-table(a)
names(y)[which(y==max(y))] #finding the mode

range(a) #shows the minimum value & maximum values
Range = max(a)- min(a)
Range

IQR(a) #shows inter quartile(percentile) range of data set

var(a) #variance of data set

sd(a) #standard deviation of data set

quantile(a,0.25) #shows the 1st quartile(percentile) of data set
quantile(a,0.5) #shows the 2nd quartile(percentile) of data set, same as median
quantile(a,0.75) #shows the 3rd quartile(percentile) of data set

quantile(a,0.98) #shows the 98th percentile of data set

quantile(a,0.2) #shows the 2nd decile(all data divided by 10) of data set

summary(a) #summary statistics in data set "a"

data("mtcars") #view the given mtcars data set in R
View(mtcars) #view the given mtcars data set in R

summary(mtcars) #summary statistics in data set "mtcars"

mtcars$vs<-as.factor(mtcars$vs) #catogerized qualitative data into categories in "vs"
summary(mtcars)
mtcars$am<-as.factor(mtcars$am)
summary(mtcars)

summary(mtcars$mpg) #only shows the statistics of given variable

x=1:10
x
x[5]=NA
x
mean(x)
mean(x,na.rm=T) #removes the missing value & shows the mean
summary(x) #show summary with showing missing values

#by variable
mean(mtcars$mpg) #shows mean of mpg in mtcars
tapply(mtcars$mpg,mtcars$vs,mean) #categorised mean value of mpg by engine type
mean(mtcars$mpg[mtcars$vs==0]) #mean value of mpg in engine type 0 only
mean(mtcars$mpg[mtcars$vs==1]) #mean value of mpg in engine type 1 only
mean(mtcars$mpg[mtcars$gear==4]) #mean value of mpg in gear 4 only
tapply(mtcars$mpg,mtcars$gear,mean) #mean value of mpg in all gear types

tapply(mtcars$mpg,mtcars$gear,summary) #summary stat for all gear types
tapply(mtcars$mpg,mtcars$gear,median)

data("iris")
View(iris)
table(iris$Species)

table(mtcars$vs,mtcars$gear) #create a table based on engine type & gear types 

##bar chart
x<-c(5, 7, 4, 8, 12, 16, 15)
x
barplot(x)
barplot(x,main="Number of customers visited the store", xlab="Days",ylab="Number of customers",names.arg=c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"),col=rainbow(length(x)) ,density = seq(10,50,70))

#ex1
y<-c(12,10,5,17,8)
y
barplot(y,main = "toy shop",xlab = "numbert of ballons sold",ylab = "colors of ballons",names.arg = c("red","pink","blue","green","orange"),col = c("red","pink","blue","green","orange"))

mtcars
mtcars$gear #getting the freq of mt cars by gear wise
barplot(mtcars$gear) #shows a bar chart for all existing values
table(mtcars$gear)
barplot(table(mtcars$gear)) #gives a frequency bar chart

##pie chart
x<-c(35,28,47,63,50)
pie(x) #shows by default pie chart
pie(x,clockwise = TRUE) #show pie chart clockwise
pie(x,clockwise = TRUE,labels = c("a","b","c","d","e"),col = rainbow(5),radius = 0.8)


pie(x,radius=0.8,labels=c("Colombo","Kandy","Jaffna","Anuradhapura","Batticaloa"),main="Pie chart of Districts", col = rainbow(5),clockwise = TRUE)

piepercent<-round(100*x/sum(x), 1) #getting values as percentages
piepercent
lbls<-paste(piepercent,"%")
lbls
lbls<-paste(piepercent,"%",sep = "") #shows percentages without spaces
lbls
#showing the labels of pie chart as percentages
pie(x,radius = 1,labels = lbls,col=heat.colors(length(x)),main="Pie chart of Districts",clockwise = TRUE)


##stem & leaf
Orange #view the orange data set
stem(Orange$circumference)
stem(Orange$circumference,scale = 2,width = 80) #giving a more readable accurate stem chart by scale

##line chart
z<-c(2,4,5,3,8,11,7)
plot(z) #shows by the default dot ploting without lines
plot(z,type ="l",col="red",main ="line chart",xlab = "inedx of z",ylab = "freq of z") #shows by give type=line,both line & plots etc
#drawing several lines in same line graph
s <- c(45,73,52,84,96)
m <- c(74,65,75,95,83)
p <- c(72,88,72,90,84)
plot(s,type = "l",col="blue",main = "quiz marks",xlab = "index num",ylab = "marks")
lines(m,type = "o",col="red") #making a another line in same line chart
lines(p,type = "l",col="green")

##dot plot
Orange$age #viewing the age of orange data set
dotchart(Orange$age) #shows the dot chart

grps = as.factor(Orange$Tree)
col_vect = rainbow(nlevels(Orange$Tree))
grps
dotchart(Orange$age , labels = row.names(Orange), groups= grps, gcolor = col_vect, main = "Dot plot for age of orange trees - grouped by tree number", xlab = "Age",color = col_vect[grps])

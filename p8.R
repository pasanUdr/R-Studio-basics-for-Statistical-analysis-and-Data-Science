#correlation between two variables
data("abalone")
install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")
data("abalone")

attach(abalone) #attaching this data set to find correlation between two variables
head(abalone)
cor(abalone[-1]) #removing 1st column because it is having categorical value

#corrplot function
install.packages("corrplot")
library("corrplot")
corrplot(cor(abalone[-1]),t1.col = "red") #ploting a diagram for given

#chart-correlative function
install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
chart.Correlation(abalone[-1],histogram = TRUE) #getting histograms

#simple linear regression
?lm()
model<- lm(abalone$Rings~abalone$LongestShell) #output the beta0 & beta1
model
summary(model) #getting anova table

#without intercept
model1<-lm(abalone$Rings~abalone$LongestShell-1)
model1
summary(model1)

#multiple linear regression
model3<-lm(abalone$Rings~abalone$LongestShell+abalone$Height)
model3
summary(model3)

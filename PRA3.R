#1
View(cars)
#1-a)
model<-lm(cars$speed~cars$dist)
model
#1-b)
summary(model)
#Since the p_value is less than 0.05, then the model is significant.
#1-c)
plot(cars)
#1-d)
anova(model)
#1-e)
confint(model)

#2
speed<-c(10,9,11,12,6,5,7,6,12,14)
price<-c(95,90,90,105,75,75,80,85,110,115)
#2-a)
plot(speed,price,type="p",col= "blue",main = "Scatter diagram with speed Vs price",xlab = "Speed",ylab = "Price",ylim = c(70,140))
#2-b)
cor(speed,price) #Compute the correlation coefficient
#2-c)
print("The correlation between speed & price is 0.94 since it is 0.9>0.6 we can tell this is a good relationship & it has a strong positive relationship.")
#2-d)
md1<-lm(speed~price)
md1
summary(md1)
#2-e)
anova(md1)
#2-f)
cff<-coef(md1)
cff
incpt<-cff[1]
incpt
slp<-cff[2]
slp

r_equation<-paste("Y=",round(incpt,3),"+",round(slp,3),"X")
print(r_equation)

predict_X<-8
predicted_Y_value<- intercept + slope * predict_X
predicted_Y_value

#3
Y<-c(240,236,270,274,301,316,300,296,267,276,288,260)
X1<-c(25,31,45,60,65,72,80,84,75,60,50,38)
X2<-c(24,21,24,25,25,26,25,25,24,25,25,23)
X3<-c(91,90,88,87,91,94,87,86,88,91,90,89)
X4<-c(100,95,110,88,94,99,97,96,110,105,100,98)
#3-a)
model2<-lm(Y~X1+X2+X3+X4)
model2
summary(model2)
#3-b)
anova(model2)

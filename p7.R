#hypothesis testing
x<-c(20.70,27.46,22.15,19.85,21.29,24.75,20.75,22.91,25.34,20.33,21.54,21.08,22.14,19.56,21.10,18.04,24.12,19.95,19.72,18.28,16.26,17.46,20.53,22.12,25.06,22.44,19.08,19.88,21.39,22.33,25.79)
sum(x)
length(x)
mean(x)
ts<-(mean(x)-20)/(sqrt(6)/sqrt(31)) #calc test statistics
ts
?rnorm
qnorm(0.975) #probability for 95% C.I. for positive value
qnorm(0.975,mean = 0, sd = 1, lower.tail = FALSE)
qnorm(0.95) #probability for 90% C.I.
qnorm(0.995,lower.tail = TRUE) #probability for 99% C.I. for positive value
qnorm(0.995,lower.tail = FALSE)
#p(z<0.5)
pnorm(0.5)
pnorm(0.0) #p(z<0.0)
pnorm(1.645)
pnorm(2.576)

z.test
library(BSDA)
install.packages("BSDA")
library(BSDA)
z.test
?z.test
z.test(x = x, y = NULL, mu = 20, sigma.x = sqrt(6), sigma.y = NULL, conf.level = 0.95)
z.test(x, mu = 20, sigma.x = sqrt(6), conf.level = 0.95) #same as above code
#*when given p-value less than the given critical region(in above example=0.05) we can reject the null hypothesis
#*p-value == given critical value
#or in C.I.level if null is less than the lower level of C.I. then also reject null

#ex2
tst<-(105-100)/(40/sqrt(100))
tst
qnorm(0.99,lower.tail = TRUE)
qnorm(0.01, lower.tail = FALSE)

#finding the normality
#test 1 Anderson-Darling normality test
ad.test
install.packages("nortest")
library(nortest)
ad.test
ad.test(x)
#test 2 Shapiro-Wilk normality test
shapiro.test(x)
#test 3 Exact one-sample Kolmogorov-Smirnov test
?ks.test
ks.test(x,pnorm)

#ex3 = -3.62
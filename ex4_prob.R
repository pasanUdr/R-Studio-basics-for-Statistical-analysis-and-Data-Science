#Q.1)
#a)
pnorm(120, 100, 10, lower.tail = FALSE)
#b)
pnorm(75, 100, 10, lower.tail = TRUE)
#c)    
pnorm(95, 100, 10) - pnorm(75, 100, 10)
#d)
pnorm(125, 100, 10) - pnorm(100, 100, 10)
#e)
qnorm(0.95,100, 10,lower.tail = TRUE) #single tailed

qnorm(0.975, 100, 10) #two tailed positive Critical Value

qnorm(0.025,100, 10, lower.tail = FALSE) #two tailed negative Critical 

#Q.2)
#a)
pt(-2,10,lower.tail = FALSE)
#b)
pt(0, 10, lower.tail = FALSE)
#c)
pt(2, 10) - pt(-1, 10)
#d)
qt(0.1, 10) #values for one-tailed
qt(0.01, 10) #values for one-tailed
qt(0.05, 10) #values for one-tailed

qt(0.05, 10) #lower value for two-side tailed
qt(0.95, 10) #upper value for two-side tailed

qt(0.005, 10) #lower value for two-side tailed
qt(0.995, 10) #upper value for two-side tailed

qt(0.025, 10) #lower value for two-side tailed
qt(0.975, 10) #upper value for two-side tailed
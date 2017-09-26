library(alr4)
#check the loaded dataset
head(Heights)
hist(Heights$dheight,breaks = 20,xlab = "dheight")
#not completely normally distributed, but it is approximately normal
hist(x=Heights$mheight,breaks = 20,xlab = "mheight")

#standard error
std_error <- function(x) sd(x)/sqrt(length(x))
std_error(Heights$mheight) #standard error for mother's height
convert_inches_to_feets <- function(x) x/12
std_error(convert_inches_to_feets(Heights$mheight))

estimated_mean <- mean(Heights$mheight)
se_mheight <- std_error(Heights$mheight)

#0.05 critical value for degree of freedom sample size -1
df = length(Heights$mheight) -1

tValue = qt(0.95,df)

lower_bound = estimated_mean - tValue * se_mheight
upper_bound = estimated_mean + tValue * se_mheight


#1.5
#mheight is normally distributed with mean = 62.5 and var = 5.5

actual_mean_mheight <- 62.5
actual_var_mheight <- 5.5
actual_sd_mheight <- sqrt(actual_var_mheight)

#find mheight prob less than 68 so converting it to z score
X_mheight<-68
Z_mheight<-(X_mheight-actual_mean_mheight)/actual_sd_mheight
pnorm(Z_mheight)

pnorm(q = 68,mean = 62.5,sd = sqrt(5.5))

pnorm(q = 65,mean = 62.5,sd = sqrt(5.5)) - pnorm(q = 60,mean = 62.5,sd = sqrt(5.5)) 

per0_25_quantile <- pnorm()
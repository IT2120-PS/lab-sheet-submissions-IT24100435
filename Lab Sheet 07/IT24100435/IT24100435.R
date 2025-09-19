setwd("C:\\Users\\chaea\\OneDrive\\Desktop\\IT24100435")
a <- 10
b <- 25
range <- 40
prob_q1 <- (b - a) / range
prob_q1

lambda <- 1/3
prob_q2 <- pexp(2, rate=lambda)
prob_q2 

mean_iq <- 100
sd_iq <- 15
prob_q3_i <- 1 - pnorm(130, mean=mean_iq, sd=sd_iq)
prob_q3_i
iq_95 <- qnorm(0.95, mean=mean_iq, sd=sd_iq)
iq_95


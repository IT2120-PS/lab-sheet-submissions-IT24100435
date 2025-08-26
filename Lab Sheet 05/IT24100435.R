setwd("C:\\Users\\it24100435\\Desktop\\IT24100435")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE, sep=",")
fix(Delivery_Times)
attach(Delivery_Times)
names(Delivery_Times)<-("minutes")
attach(Delivery_Times)

histogram <- hist(minutes, main= "Histogram for Delivery Times", breaks = seq(20,70,length = 10),
                  right = FALSE,col="pink", border="black")

breaks<- round(histogram$breaks)
freq <- histogram$mids
mids <- histogram$mids
cum.freq <- cumsum(freq)

new <- c()
for (i in 1:length(breaks)) {
  if (i == 1) {
    new[i] = 0
  }
  else {
    new[i] = cum.freq[i - 1]
  }
}
plot(breaks, new, type = 'l', main = "Cumalative Frequency Polygon for Delivery times",
     xlab = "Minutes", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))
cbind(Upper = breaks, Cumfreq = new)



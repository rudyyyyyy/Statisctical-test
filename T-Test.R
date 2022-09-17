# T-test

#   null hypothesis : Statistically equal
#   alternate hypothesis : Statistically equal
#   Use 2-tailed test
#   mean of the students height = 5.5
#
#   T Test Formula:       xbar - Mean weight
#                   -------------------------------------
#                   Standard Deviation / Square Root of n


data <- read_excel("data2.xlsx")
print(data)

tStat <- (mean(data2$height) - 5.5) / (sd(data2$height) / sqrt(nrow(data)))
print(tStat)     

2*pt(q=tStat, df=nrow(data)-1, lower.tail=FALSE)


# We can say p-value(0.04838733) is less than 0.05, so we reject the null hypothesis
